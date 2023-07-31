// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';

import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart' show DartFormatter;
import 'package:path/path.dart' as path;
import 'package:prisma_generator_helper/dmmf.dart' as dmmf;
import 'package:prisma_generator_helper/prisma_generator_helper.dart';

import 'packages.dart' as packages;
import 'prisma_info.dart';
import 'scalars.dart';
import 'utils.dart';

class MPrismaModelGenerator implements Handler {
  MPrismaModelGenerator({required this.withoutSuffix, required this.useListType});

  final bool withoutSuffix;

  final bool useListType;

  /// Prisma info
  late final PrismaInfo info;

  /// The library builder.
  final code.LibraryBuilder library = code.LibraryBuilder();

  /// Generator options.
  late GeneratorOptions options;

  @override
  Future<GeneratorManifest> onManifest(GeneratorConfig config) async {
    // Sets the prisma info
    info = PrismaInfo.lookup(resolveNpm(config.config));

    return GeneratorManifest(
      prettyName: 'Prisma Dart Client',
      defaultOutput: path.joinAll([
        '..',
        'lib',
        'src',
        'generated',
        'prisma',
      ]),
      requiresEngines: [EngineType.queryEngine],
    );
  }

  @override
  Future<void> onGenerate(GeneratorOptions options) async {
    // 1. Read the options
    this.options = options;

    // 2. Generate the different classes
    generateEnumModels();
    generateClassModels();
    defineDirectives();
    // generateOutputs();

    // 3. Write the library to the file system
    writeLibrary();
  }

  /// Resolve the NPM executable, defaulting to "npm"
  String resolveNpm(Map<String, dynamic> config) {
    // Get the config, making all keys lowercase.
    final lowerCasedConfig = config.map((key, value) => MapEntry(key.toLowerCase(), value));

    // Return the NPM executable, or default to "npm".
    return lowerCasedConfig.containsKey('npm') ? lowerCasedConfig['npm'] as String : 'npm';
  }

  /// Build to json method
  ///
  /// With the help of the [json_serializable] package, the `toJson` method is generated.
  // code.Method _buildToJsonMethod(String classname) {
  //   return code.Method((code.MethodBuilder updates) {
  //     updates
  //       ..name = 'toJson'
  //       ..returns = code.refer('Map<String, dynamic>')
  //       ..body = code.refer('_\$${classname}ToJson').call([code.refer('this')]).code
  //       ..lambda = true;
  //   });
  // }

  /// Build default constructor
  code.Constructor _buildDefaultConstructor(Iterable<code.Field> fields, String classname) {
    return code.Constructor((code.ConstructorBuilder updates) {
      // updates.constant = true;
      updates.factory = true;
      // updates.body = code.refer('_$classname').code;
      updates.redirect = code.refer('_$classname');
      updates.optionalParameters.addAll(fields.map((e) {
        return code.Parameter((code.ParameterBuilder updates) {
          updates
            ..name = e.name
            ..named = true
            ..toThis = false
            ..type = e.type
            ..required = _resolveReferenceRequired(e.type);
        });
      }));
    });
  }

  /// Build from json constructor
  code.Constructor _buildFromJsonConstructor(String classname) {
    return code.Constructor((code.ConstructorBuilder updates) {
      updates
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(code.Parameter((code.ParameterBuilder updates) {
          updates
            ..name = 'json'
            ..type = code.refer('Map<String, dynamic>');
        }))
        ..body = code.refer('_\$${classname}${withoutSuffix ? '' : 'Model'}FromJson').call([code.refer('json')]).code
        ..lambda = true;
    });
  }

  /// Resolve the reference is required
  bool _resolveReferenceRequired(code.Reference? reference) {
    if (reference is code.TypeReference) {
      return !(reference.isNullable ?? false);
    }

    return true;
  }
}

/// directives for the library
extension LibraryDirectives on MPrismaModelGenerator {
  /// Define the library directives
  void defineDirectives() {
    _importDirectives();
    _partDirectives();
  }

  /// Import packages
  void _importDirectives() {
    library.directives.add(
      code.Directive.import('package:json_annotation/json_annotation.dart'),
    );
    library.directives.add(
      code.Directive.import('package:freezed_annotation/freezed_annotation.dart'),
    );
    // library.directives.add(
    //   code.Directive.import('package:orm/orm.dart', show: const ['DateTimeJsonConverter']),
    // );
  }

  /// Parts
  void _partDirectives() {
    final basename = path.basename(_resolveOutputPath());
    final part = basename.endsWith('.dart') ? basename.substring(0, basename.length - 5) : basename;

    library.directives.add(code.Directive.part('$part.freezed.dart'));
    library.directives.add(code.Directive.part('$part.g.dart'));
    // if (part == 'prisma_client.dart') {
    //   library.directives.add(code.Directive.part('prisma_model.dart'));
    // } else {
    //   library.directives.add(code.Directive.partOf('prisma_client.dart'));
    // }
  }
}

// Write the library to a file.
extension WriteLibrary on MPrismaModelGenerator {
  /// Dart emitter
  static final emitter = code.DartEmitter(
    allocator: code.Allocator.simplePrefixing(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  /// Dart formatter
  static final formatter = DartFormatter();

  /// Write library to file
  void writeLibrary() {
    final library = this.library.build();
    final original = library.accept(emitter);

    final formatted = formatter.format(original.toString());

    // Create output file.
    final output = File(_resolveOutputPath());
    if (!output.existsSync()) {
      output.createSync(recursive: true);
    }

    // Write to file.
    output.writeAsStringSync(formatted, mode: FileMode.write);
  }

  /// Resolve the output path
  String _resolveOutputPath() {
    final output = switch (options.generator.output) {
      EnvValueViaName(name: final name) => bool.hasEnvironment(name) ? String.fromEnvironment(name) : null,
      EnvValueViaValue(value: final value) => value,
      _ => null,
    };

    if (output == null) {
      throw Exception('Output path not found');
    }

    // If the path not is a dart file, add it.
    if (!output.endsWith('.dart')) {
      return path.join(output, 'prisma_model.dart');
    }

    return output;
  }
}

/// Enum model generator
extension EnumModelGenerator on MPrismaModelGenerator {
  /// Ignore enum names
  static final Iterable<String> _ignoreEnumNames = [
    'TransactionIsolationLevel',
  ].map((e) => e.toLowerCase());

  /// Generates the enums for the prisma and model enum types
  /// Called in the generate() function
  void generateEnumModels() {
    _enumModelsBuilder(options.dmmf.schema.enumTypes.model);
  }

  /// Build enums
  void _enumModelsBuilder(Iterable<dmmf.SchemaEnum>? enums) {
    if (enums == null || enums.isEmpty) {
      return;
    }

    for (final element in enums) {
      // If the enum name is in the ignore list, skip it.
      if (_ignoreEnumNames.contains(element.name.toLowerCase())) {
        // library.directives.add(code.Directive.export(
        //   packages.orm,
        //   show: [element.name],
        // ));
        continue;
      }

      // Add enum to library
      library.body.add(code.Enum((code.EnumBuilder updates) {
        final values = _enumModelValuesBuilder(element.values);
        updates
          ..name = '${element.name.toDartClassName()}${withoutSuffix ? '' : 'Model'}'
          ..values.addAll(values);

        if (values.any((element) => element.arguments.isNotEmpty)) {
          // Clean enum method
          updates.methods.clear();

          // Add constructor
          updates.constructors.add(code.Constructor((updates) {
            updates.constant = true;
            updates.optionalParameters.add(code.Parameter((updates) {
              updates
                ..name = 'originalName'
                ..toThis = true
                ..named = false
                ..required = false;
            }));
          }));
        }
      }));
    }
  }

  /// Build enum values
  Iterable<code.EnumValue> _enumModelValuesBuilder(Iterable<String> values) {
    return values.map((e) {
      return code.EnumValue((code.EnumValueBuilder updates) {
        updates.name = e.toDartPropertyName();

        if (updates.name != e) {
          // Add annotation
          updates.annotations.add(
            code.refer('JsonValue').newInstance([code.literalString(e)]),
          );

          // Add original name argument
          updates.arguments.add(code.literalString(e, raw: true));
        }
      });
    });
  }
}

/// Generate scalar models
extension ClassModelGenerator on MPrismaModelGenerator {
  /// Generate scalar models
  void generateClassModels() {
    final types = options.dmmf.schema.outputObjectTypes.model;
    final inputTypes = options.dmmf.schema.inputObjectTypes.prisma
        .where((element) => element.name.endsWith('CreateInput') && !element.name.endsWith('UncheckedCreateInput'))
        .map(
          (e) => dmmf.InputType(
            name: e.name.replaceAll('CreateInput', ''),
            constraints: e.constraints,
            fields: e.fields,
            fieldsMap: e.fieldsMap,
            meta: e.meta,
          ),
        )
        .toList();

    if (types.isEmpty) return;

    final scalarModels = types.map((e) => _filterClassModelNonScalarFields(e));

    library.body.addAll(scalarModels.map((e) => _buildClassModel(e, inputTypes.trySingleWhere((element) => element.name.toLowerCase() == e.name.toLowerCase()))));
  }

  /// Build scalar model
  code.Class _buildClassModel(dmmf.OutputType model, dmmf.InputType? inputType) {
    final classname = model.name.toDartClassName();
    return code.Class((updates) {
      updates
        ..name = '$classname${withoutSuffix ? '' : 'Model'}'
        ..mixins.add(code.refer('_\$$classname${withoutSuffix ? '' : 'Model'}'))
        ..annotations.add(code.refer('unfreezed', packages.freezedAnnotation));
      // ..methods.add(_buildToJsonMethod(classname));

      // Build class fields
      final fields = model.fields.map((e) => _buildFieldModel(e, inputType?.fields.trySingleWhere((element) => element.name == e.name)));
      // updates.fields.addAll(fields);

      // Build default constructor
      updates.constructors.add(_buildDefaultConstructor(fields, '$classname${withoutSuffix ? '' : 'Model'}'));

      // Build from json constructor
      updates.constructors.add(_buildFromJsonConstructor(classname));
    });
  }

  /// Build field
  code.Field _buildFieldModel(
    dmmf.SchemaField field,
    dmmf.SchemaArg? inputField,
  ) {
    return code.Field((code.FieldBuilder updates) {
      final typeName = field.outputType.type.when<String>(
        string: (value) => value,
        enum_: (type) => type.name,
        object: (type) => type.name,
      );
      final type = scalar(
        typeName,
        isList: field.outputType.isList,
        isNullable: (inputField?.isNullable ?? true) || field.isNullable == true,
        location: field.outputType.location,
        withoutSuffix: withoutSuffix,
        useListType: useListType,
      );

      updates
        ..name = field.name.toDartPropertyName()
        ..type = type;

      // Add document comment
      if (field.documentation != null) {
        updates.docs.addAll(field.documentation!.split('\r').map((e) => e.split('\n')).expand((e) => e).map((e) => e.trim()));
      }

      // Add JsonKey annotation
      if (updates.name != field.name) {
        updates.annotations.add(code.refer('JsonKey').newInstance([], {
          'name': code.literalString(field.name, raw: true),
        }));
      }

      // Add deprecation annotation
      if (field.deprecation != null) {
        updates.annotations.add(code.refer('Deprecated').newInstance([
          code.literalString(field.deprecation!.reason),
        ]));
      }
    });
  }

  /// Filter model non scalar fields
  dmmf.OutputType _filterClassModelNonScalarFields(dmmf.OutputType model) {
    return dmmf.OutputType(
      name: model.name,
      fields: model.fields.where((e) {
        bool isClassModelScalarField = _isClassModelScalarField(model.name, e.name, e.outputType.namespace);
        return isClassModelScalarField;
      }).toList(),
    );
  }

  /// Check model scalar field
  bool _isClassModelScalarField(String model, String field, dmmf.FieldNamespace? namespace) {
    final enumName = _buildClassModelScalarFieldEnumName(model).toLowerCase();
    final enums = options.dmmf.schema.enumTypes.prisma;
    final scalarEnum = enums.firstWhere(
      (e) => e.name.toLowerCase() == enumName,
      orElse: () => throw Exception('Enum $enumName not found'),
    );

    return scalarEnum.values.any((e) => e.toLowerCase() == field.toLowerCase()) || namespace == dmmf.FieldNamespace.model;
  }

  /// Build model scalar field enum name
  String _buildClassModelScalarFieldEnumName(String model) => '${model}ScalarFieldEnum';
}

extension OutputGenerator on MPrismaModelGenerator {
  void generateOutputs() {
    final enumTypeModels = options.dmmf.schema.enumTypes.model;
    final enumTypePrismas = options.dmmf.schema.enumTypes.prisma;
    final fieldRefTypePrismas = options.dmmf.schema.fieldRefTypes.prisma;
    final inputObjectTypeModels = options.dmmf.schema.inputObjectTypes.model;
    final inputObjectTypePrisma = options.dmmf.schema.inputObjectTypes.prisma;
    final outputObjectTypeModels = options.dmmf.schema.outputObjectTypes.model;
    final outputObjectTypePrismas = options.dmmf.schema.outputObjectTypes.prisma;
    final rootMutationType = options.dmmf.schema.rootMutationType;
    final rootQueryType = options.dmmf.schema.rootQueryType;

    String content = '';

    print('---Enum Types Model---');
    if (enumTypeModels != null) {
      for (var enumTypeModel in enumTypeModels) {
        content += '${enumTypeModel.name}, ${enumTypeModel.values}';
      }
      writeStringSync('enum_types_model.json', content);
    }
    print('---End---');

    print('---Enum Types Prisma---');
    content = '';
    for (var enumTypePrisma in enumTypePrismas) {
      content += '${enumTypePrisma.name}, ${enumTypePrisma.values}';
    }
    writeStringSync('enum_types_prisma.json', content);
    print('---End---');

    print('---Field Ref Types Prisma---');
    if (fieldRefTypePrismas != null) {
      content = '';
      for (var fieldRefTypePrisma in fieldRefTypePrismas) {
        content += '{"${fieldRefTypePrisma.name}": ${fieldRefTypePrisma.fields.map(
              (e) => {
                '"${e.name}"': {
                  '"isNullable"': e.isNullable,
                  '"isRequired"': e.isRequired,
                  '"inputTypes"': e.inputTypes
                      .map(
                        (e) => {
                          '"isList"': e.isList,
                          '"location"': {
                            '"index"': e.location.index,
                            '"name"': '"${e.location.name}"',
                          },
                        },
                      )
                      .toList(),
                  '"comment"': e.comment,
                }
              },
            ).toList()}},';
      }
      writeStringSync('field_ref_types_prisma.json', content);
    }
    print('---End---');

    print('---Input Object Types Model');
    if (inputObjectTypeModels != null) {
      content = '';
      for (var inputObjectTypeModel in inputObjectTypeModels) {
        content += '{"${inputObjectTypeModel.name}": ${inputObjectTypeModel.fields.map(
              (e) => {
                '"${e.name}"': {
                  '"isNullable"': e.isNullable,
                  '"isRequired"': e.isRequired,
                  '"inputTypes"': e.inputTypes
                      .map(
                        (e) => {
                          '"isList"': e.isList,
                          '"location"': {
                            '"index"': e.location.index,
                            '"name"': '"${e.location.name}"',
                          },
                        },
                      )
                      .toList(),
                  '"comment"': e.comment,
                }
              },
            ).toList()}},';
      }
      writeStringSync('input_object_types_model.json', content);
    }
    print('---End---');

    print('---Input Object Types Prisma');
    content = '';
    for (var inputObjectTypePrisma in inputObjectTypePrisma) {
      content += '{"${inputObjectTypePrisma.name}": ${inputObjectTypePrisma.fields.map(
            (e) => {
              '"${e.name}"': {
                '"isNullable"': e.isNullable,
                '"isRequired"': e.isRequired,
                '"inputTypes"': e.inputTypes
                    .map(
                      (e) => {
                        '"isList"': e.isList,
                        '"location"': {
                          '"index"': e.location.index,
                          '"name"': '"${e.location.name}"',
                        },
                      },
                    )
                    .toList(),
                '"comment"': e.comment,
              }
            },
          ).toList()}},';
    }
    writeStringSync('input_object_types_prisma.json', content);
    print('---End---');

    print('---Output Object Types Model---');
    content = '';
    for (var outputObjectTypeModel in outputObjectTypeModels) {
      content += '{"${outputObjectTypeModel.name}": ${outputObjectTypeModel.fields.map(
            (e) => {
              '"${e.name}"': {
                '"isNullable"': e.isNullable,
                '"args"': e.args
                    .map(
                      (e) => {
                        '"isNullable"': e.isNullable,
                        '"isRequired"': e.isRequired,
                        '"inputTypes"': e.inputTypes
                            .map(
                              (e) => {
                                '"isList"': e.isList,
                                '"location"': {
                                  '"index"': e.location.index,
                                  '"name"': '"${e.location.name}"',
                                },
                              },
                            )
                            .toList(),
                        '"comment"': e.comment,
                      },
                    )
                    .toList()
              }
            },
          ).toList()}},';
    }
    writeStringSync('output_obect_types_model.json', content);
    print('---End---');

    print('---Output Object Types Prisma---');
    content = '';
    for (var outputObjectTypePrisma in outputObjectTypePrismas) {
      content += '{"${outputObjectTypePrisma.name}": ${outputObjectTypePrisma.fields.map(
            (e) => {
              '"${e.name}"': {
                '"isNullable"': e.isNullable,
                '"args"': e.args.map(
                  (e) => {
                    '"isNullable"': e.isNullable,
                    '"isRequired"': e.isRequired,
                    '"inputTypes"': e.inputTypes
                        .map(
                          (e) => {
                            '"isList"': e.isList,
                            '"location"': {
                              '"index"': e.location.index,
                              '"name"': '"${e.location.name}"',
                            },
                          },
                        )
                        .toList(),
                    '"comment"': e.comment,
                  },
                )
              }
            },
          ).toList()}},';
    }
    writeStringSync('output_object_types_prisma.json', content);
    print('---End---');

    print('Root Mutation Type : $rootMutationType');

    print('Root Query Type : $rootQueryType');
  }

  File writeStringSync(String filename, String contents) {
    File file = File(path.joinAll([Directory.current.path, 'outputs', filename]));
    if (!file.existsSync()) {
      file.createSync();
    }
    file.writeAsStringSync(contents);
    return file;
  }
}

/// An extension on `Iterable<E>` providing utility methods to work with collections.
extension IterableExtension<E> on Iterable<E> {
  /// Returns a new list containing all elements of this iterable, sorted according to the [compare] function.
  ///
  /// The [compare] function is optional and defines the sorting order of the elements.
  /// If the [compare] function is omitted, the elements are sorted in their natural order.
  /// If the [compare] function returns a negative value, the first element is ordered before the second element.
  /// If the [compare] function returns zero, the order of the elements remains unchanged.
  /// If the [compare] function returns a positive value, the second element is ordered before the first element.
  ///
  /// Example usage:
  /// ```dart
  /// List<int> numbers = [5, 2, 10, 7];
  /// List<int> sortedNumbers = numbers.sorted((a, b) => a.compareTo(b));
  /// print(sortedNumbers); // Output: [2, 5, 7, 10]
  /// ```
  List<E> sorted([int Function(E, E)? compare]) {
    List<E> list = toList();
    list.sort(compare);
    return list;
  }

  /// Returns the single element that satisfies the given [test] or `null` if none or more than one element matches.
  ///
  /// The [test] function is used to test elements for a condition. It should return `true` for the desired element.
  /// If there is exactly one element in the iterable that satisfies the [test], that element is returned.
  /// If there are no elements that satisfy the [test], or if there is more than one matching element,
  /// the [orElse] function, if provided, is executed and its result is returned.
  /// If [orElse] is not provided, or if it returns `null`, the method returns `null`.
  ///
  /// Example usage:
  /// ```dart
  /// List<int> numbers = [1, 3, 5, 7];
  /// int? singleEven = numbers.trySingleWhere((element) => element.isEven);
  /// print(singleEven); // Output: null (no even numbers in the list)
  ///
  /// int? result = numbers.trySingleWhere((element) => element.isOdd, orElse: () => 0);
  /// print(result); // Output: 1 (the only odd number in the list)
  /// ```
  E? trySingleWhere(bool Function(E element) test, {E Function()? orElse}) {
    try {
      return singleWhere(test, orElse: orElse);
    } on StateError {
      return null;
    }
  }
}
