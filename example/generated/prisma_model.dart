// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i1;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import './prisma_client.dart';

part 'prisma_model.freezed.dart';
part 'prisma_model.g.dart';

enum UserTypeModel { developer, admin }

@_i1.unfreezed
class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String username,
    required String password,
    UserTypeModel? userType,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@_i1.unfreezed
class BusinessModel with _$BusinessModel {
  factory BusinessModel({
    required int id,
    required int ownerId,
    required String name,
  }) = _BusinessModel;

  factory BusinessModel.fromJson(Map<String, dynamic> json) => _$BusinessModelFromJson(json);
}
