// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i1;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prisma_model.freezed.dart';
part 'prisma_model.g.dart';

enum UserType { developer, admin }

@_i1.unfreezed
class User with _$User {
  factory User({
    int? id,
    required String username,
    required String password,
    UserType? userType,
    List<Business>? businesses,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@_i1.unfreezed
class Business with _$Business {
  factory Business({
    int? id,
    int? ownerId,
    DateTime? createdAt,
    required String name,
    User? owner,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
