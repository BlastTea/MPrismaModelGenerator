import 'package:prisma_generator_helper/prisma_generator_helper.dart';

import 'src/generator.dart';

Future<void> main(List<String> args) async {
  bool withoutSuffix = false;
  bool useListType = false;

  if (args.isNotEmpty) {
    withoutSuffix = args.any((element) => element == '--no-suffix' || element == '-ns');
    useListType = args.any((element) => element == '--use-list-type' || element == '-ult');
  }

  await generator(MPrismaModelGenerator(withoutSuffix: withoutSuffix, useListType: useListType));
}
