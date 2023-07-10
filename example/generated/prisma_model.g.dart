// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeModelEnumMap, json['userType']),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'userType': _$UserTypeModelEnumMap[instance.userType],
    };

const _$UserTypeModelEnumMap = {
  UserTypeModel.developer: 'developer',
  UserTypeModel.admin: 'admin',
};

_$_BusinessModel _$$_BusinessModelFromJson(Map<String, dynamic> json) =>
    _$_BusinessModel(
      id: json['id'] as int,
      ownerId: json['ownerId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_BusinessModelToJson(_$_BusinessModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
    };
