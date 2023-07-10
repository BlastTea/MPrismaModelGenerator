// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prisma_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  UserTypeModel? get userType => throw _privateConstructorUsedError;
  set userType(UserTypeModel? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id, String username, String password, UserTypeModel? userType});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserTypeModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String username, String password, UserTypeModel? userType});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? userType = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserTypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      required this.username,
      required this.password,
      this.userType});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  int id;
  @override
  String username;
  @override
  String password;
  @override
  UserTypeModel? userType;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, password: $password, userType: $userType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required int id,
      required String username,
      required String password,
      UserTypeModel? userType}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get username;
  set username(String value);
  @override
  String get password;
  set password(String value);
  @override
  UserTypeModel? get userType;
  set userType(UserTypeModel? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessModel _$BusinessModelFromJson(Map<String, dynamic> json) {
  return _BusinessModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  set ownerId(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessModelCopyWith<BusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessModelCopyWith<$Res> {
  factory $BusinessModelCopyWith(
          BusinessModel value, $Res Function(BusinessModel) then) =
      _$BusinessModelCopyWithImpl<$Res, BusinessModel>;
  @useResult
  $Res call({int id, int ownerId, String name});
}

/// @nodoc
class _$BusinessModelCopyWithImpl<$Res, $Val extends BusinessModel>
    implements $BusinessModelCopyWith<$Res> {
  _$BusinessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessModelCopyWith<$Res>
    implements $BusinessModelCopyWith<$Res> {
  factory _$$_BusinessModelCopyWith(
          _$_BusinessModel value, $Res Function(_$_BusinessModel) then) =
      __$$_BusinessModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int ownerId, String name});
}

/// @nodoc
class __$$_BusinessModelCopyWithImpl<$Res>
    extends _$BusinessModelCopyWithImpl<$Res, _$_BusinessModel>
    implements _$$_BusinessModelCopyWith<$Res> {
  __$$_BusinessModelCopyWithImpl(
      _$_BusinessModel _value, $Res Function(_$_BusinessModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? name = null,
  }) {
    return _then(_$_BusinessModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessModel implements _BusinessModel {
  _$_BusinessModel(
      {required this.id, required this.ownerId, required this.name});

  factory _$_BusinessModel.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessModelFromJson(json);

  @override
  int id;
  @override
  int ownerId;
  @override
  String name;

  @override
  String toString() {
    return 'BusinessModel(id: $id, ownerId: $ownerId, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessModelCopyWith<_$_BusinessModel> get copyWith =>
      __$$_BusinessModelCopyWithImpl<_$_BusinessModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessModelToJson(
      this,
    );
  }
}

abstract class _BusinessModel implements BusinessModel {
  factory _BusinessModel(
      {required int id,
      required int ownerId,
      required String name}) = _$_BusinessModel;

  factory _BusinessModel.fromJson(Map<String, dynamic> json) =
      _$_BusinessModel.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get ownerId;
  set ownerId(int value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$_BusinessModelCopyWith<_$_BusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}
