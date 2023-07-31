// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      businesses: (json['businesses'] as List<dynamic>?)
          ?.map((e) => Business.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'userType': _$UserTypeEnumMap[instance.userType],
      'businesses': instance.businesses?.toList(),
    };

const _$UserTypeEnumMap = {
  UserType.developer: 'developer',
  UserType.admin: 'admin',
};

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      id: json['id'] as int?,
      ownerId: json['ownerId'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'name': instance.name,
      'owner': instance.owner,
    };
