// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  password,
  userType;

  @override
  String? get originalName => null;
}

enum BusinessScalarFieldEnum implements _i1.PrismaEnum {
  id,
  ownerId,
  name;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

enum UserType implements _i1.PrismaEnum {
  developer,
  admin;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.userType,
    this.business,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? username;

  final StringFilter? password;

  final EnumUserTypeNullableFilter? userType;

  final BusinessListRelationFilter? business;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.username,
    this.password,
    this.userType,
    this.business,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? userType;

  final BusinessOrderByRelationAggregateInput? business;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({this.id});

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.username,
    this.password,
    this.userType,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? userType;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UserAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? password;

  final EnumUserTypeNullableWithAggregatesFilter? userType;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class BusinessWhereInput implements _i1.JsonSerializable {
  const BusinessWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.ownerId,
    this.name,
    this.owner,
  });

  factory BusinessWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessWhereInputFromJson(json);

  final Iterable<BusinessWhereInput>? AND;

  final Iterable<BusinessWhereInput>? OR;

  final Iterable<BusinessWhereInput>? NOT;

  final IntFilter? id;

  final IntFilter? ownerId;

  final StringFilter? name;

  final UserRelationFilter? owner;

  @override
  Map<String, dynamic> toJson() => _$BusinessWhereInputToJson(this);
}

@_i1.jsonSerializable
class BusinessOrderByWithRelationInput implements _i1.JsonSerializable {
  const BusinessOrderByWithRelationInput({
    this.id,
    this.ownerId,
    this.name,
    this.owner,
  });

  factory BusinessOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  final SortOrder? name;

  final UserOrderByWithRelationInput? owner;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class BusinessWhereUniqueInput implements _i1.JsonSerializable {
  const BusinessWhereUniqueInput({this.id});

  factory BusinessWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$BusinessWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class BusinessOrderByWithAggregationInput implements _i1.JsonSerializable {
  const BusinessOrderByWithAggregationInput({
    this.id,
    this.ownerId,
    this.name,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory BusinessOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  final SortOrder? name;

  @JsonKey(name: r'_count')
  final BusinessCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final BusinessAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final BusinessMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final BusinessMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final BusinessSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class BusinessScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const BusinessScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<BusinessScalarWhereWithAggregatesInput>? AND;

  final Iterable<BusinessScalarWhereWithAggregatesInput>? OR;

  final Iterable<BusinessScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntWithAggregatesFilter? ownerId;

  final StringWithAggregatesFilter? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    required this.username,
    required this.password,
    this.userType,
    this.business,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String username;

  final String password;

  final UserType? userType;

  final BusinessCreateNestedManyWithoutOwnerInput? business;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.username,
    required this.password,
    this.userType,
    this.business,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final UserType? userType;

  final BusinessUncheckedCreateNestedManyWithoutOwnerInput? business;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.username,
    this.password,
    this.userType,
    this.business,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  final BusinessUpdateManyWithoutOwnerNestedInput? business;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.username,
    this.password,
    this.userType,
    this.business,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  final BusinessUncheckedUpdateManyWithoutOwnerNestedInput? business;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.username,
    required this.password,
    this.userType,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.username,
    this.password,
    this.userType,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateInput implements _i1.JsonSerializable {
  const BusinessCreateInput({
    required this.name,
    required this.owner,
  });

  factory BusinessCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessCreateInputFromJson(json);

  final String name;

  final UserCreateNestedOneWithoutBusinessInput owner;

  @override
  Map<String, dynamic> toJson() => _$BusinessCreateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedCreateInput implements _i1.JsonSerializable {
  const BusinessUncheckedCreateInput({
    this.id,
    required this.ownerId,
    required this.name,
  });

  factory BusinessUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessUncheckedCreateInputFromJson(json);

  final int? id;

  final int ownerId;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$BusinessUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateInput implements _i1.JsonSerializable {
  const BusinessUpdateInput({
    this.name,
    this.owner,
  });

  factory BusinessUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final UserUpdateOneRequiredWithoutBusinessNestedInput? owner;

  @override
  Map<String, dynamic> toJson() => _$BusinessUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedUpdateInput implements _i1.JsonSerializable {
  const BusinessUncheckedUpdateInput({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? ownerId;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() => _$BusinessUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateManyInput implements _i1.JsonSerializable {
  const BusinessCreateManyInput({
    this.id,
    required this.ownerId,
    required this.name,
  });

  factory BusinessCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessCreateManyInputFromJson(json);

  final int? id;

  final int ownerId;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$BusinessCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateManyMutationInput implements _i1.JsonSerializable {
  const BusinessUpdateManyMutationInput({this.name});

  factory BusinessUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const BusinessUncheckedUpdateManyInput({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final IntFieldUpdateOperationsInput? ownerId;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class EnumUserTypeNullableFilter implements _i1.JsonSerializable {
  const EnumUserTypeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  factory EnumUserTypeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$EnumUserTypeNullableFilterFromJson(json);

  final UserType? equals;

  @JsonKey(name: r'in')
  final Iterable<UserType>? $in;

  final Iterable<UserType>? notIn;

  final UserType? not;

  @override
  Map<String, dynamic> toJson() => _$EnumUserTypeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class BusinessListRelationFilter implements _i1.JsonSerializable {
  const BusinessListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory BusinessListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$BusinessListRelationFilterFromJson(json);

  final BusinessWhereInput? every;

  final BusinessWhereInput? some;

  final BusinessWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$BusinessListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class BusinessOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const BusinessOrderByRelationAggregateInput({this.$count});

  factory BusinessOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? userType;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UserAvgOrderByAggregateInput({this.id});

  factory UserAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? userType;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? userType;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UserSumOrderByAggregateInput({this.id});

  factory UserSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class EnumUserTypeNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const EnumUserTypeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory EnumUserTypeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$EnumUserTypeNullableWithAggregatesFilterFromJson(json);

  final UserType? equals;

  @JsonKey(name: r'in')
  final Iterable<UserType>? $in;

  final Iterable<UserType>? notIn;

  final UserType? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedEnumUserTypeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedEnumUserTypeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$EnumUserTypeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class UserRelationFilter implements _i1.JsonSerializable {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UserWhereInput? $is;

  final UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@_i1.jsonSerializable
class BusinessCountOrderByAggregateInput implements _i1.JsonSerializable {
  const BusinessCountOrderByAggregateInput({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const BusinessAvgOrderByAggregateInput({
    this.id,
    this.ownerId,
  });

  factory BusinessAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const BusinessMaxOrderByAggregateInput({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessMinOrderByAggregateInput implements _i1.JsonSerializable {
  const BusinessMinOrderByAggregateInput({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessSumOrderByAggregateInput implements _i1.JsonSerializable {
  const BusinessSumOrderByAggregateInput({
    this.id,
    this.ownerId,
  });

  factory BusinessSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateNestedManyWithoutOwnerInput
    implements _i1.JsonSerializable {
  const BusinessCreateNestedManyWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory BusinessCreateNestedManyWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessCreateNestedManyWithoutOwnerInputFromJson(json);

  final Iterable<BusinessCreateWithoutOwnerInput>? create;

  final Iterable<BusinessCreateOrConnectWithoutOwnerInput>? connectOrCreate;

  final BusinessCreateManyOwnerInputEnvelope? createMany;

  final Iterable<BusinessWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessCreateNestedManyWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedCreateNestedManyWithoutOwnerInput
    implements _i1.JsonSerializable {
  const BusinessUncheckedCreateNestedManyWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory BusinessUncheckedCreateNestedManyWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedCreateNestedManyWithoutOwnerInputFromJson(json);

  final Iterable<BusinessCreateWithoutOwnerInput>? create;

  final Iterable<BusinessCreateOrConnectWithoutOwnerInput>? connectOrCreate;

  final BusinessCreateManyOwnerInputEnvelope? createMany;

  final Iterable<BusinessWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedCreateNestedManyWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableEnumUserTypeFieldUpdateOperationsInput
    implements _i1.JsonSerializable {
  const NullableEnumUserTypeFieldUpdateOperationsInput({this.set});

  factory NullableEnumUserTypeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableEnumUserTypeFieldUpdateOperationsInputFromJson(json);

  final UserType? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableEnumUserTypeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateManyWithoutOwnerNestedInput
    implements _i1.JsonSerializable {
  const BusinessUpdateManyWithoutOwnerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory BusinessUpdateManyWithoutOwnerNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUpdateManyWithoutOwnerNestedInputFromJson(json);

  final Iterable<BusinessCreateWithoutOwnerInput>? create;

  final Iterable<BusinessCreateOrConnectWithoutOwnerInput>? connectOrCreate;

  final Iterable<BusinessUpsertWithWhereUniqueWithoutOwnerInput>? upsert;

  final BusinessCreateManyOwnerInputEnvelope? createMany;

  final Iterable<BusinessWhereUniqueInput>? set;

  final Iterable<BusinessWhereUniqueInput>? disconnect;

  final Iterable<BusinessWhereUniqueInput>? delete;

  final Iterable<BusinessWhereUniqueInput>? connect;

  final Iterable<BusinessUpdateWithWhereUniqueWithoutOwnerInput>? update;

  final Iterable<BusinessUpdateManyWithWhereWithoutOwnerInput>? updateMany;

  final Iterable<BusinessScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpdateManyWithoutOwnerNestedInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedUpdateManyWithoutOwnerNestedInput
    implements _i1.JsonSerializable {
  const BusinessUncheckedUpdateManyWithoutOwnerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory BusinessUncheckedUpdateManyWithoutOwnerNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedUpdateManyWithoutOwnerNestedInputFromJson(json);

  final Iterable<BusinessCreateWithoutOwnerInput>? create;

  final Iterable<BusinessCreateOrConnectWithoutOwnerInput>? connectOrCreate;

  final Iterable<BusinessUpsertWithWhereUniqueWithoutOwnerInput>? upsert;

  final BusinessCreateManyOwnerInputEnvelope? createMany;

  final Iterable<BusinessWhereUniqueInput>? set;

  final Iterable<BusinessWhereUniqueInput>? disconnect;

  final Iterable<BusinessWhereUniqueInput>? delete;

  final Iterable<BusinessWhereUniqueInput>? connect;

  final Iterable<BusinessUpdateWithWhereUniqueWithoutOwnerInput>? update;

  final Iterable<BusinessUpdateManyWithWhereWithoutOwnerInput>? updateMany;

  final Iterable<BusinessScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedUpdateManyWithoutOwnerNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutBusinessInput implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutBusinessInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutBusinessInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutBusinessInputFromJson(json);

  final UserCreateWithoutBusinessInput? create;

  final UserCreateOrConnectWithoutBusinessInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneRequiredWithoutBusinessNestedInput
    implements _i1.JsonSerializable {
  const UserUpdateOneRequiredWithoutBusinessNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory UserUpdateOneRequiredWithoutBusinessNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneRequiredWithoutBusinessNestedInputFromJson(json);

  final UserCreateWithoutBusinessInput? create;

  final UserCreateOrConnectWithoutBusinessInput? connectOrCreate;

  final UserUpsertWithoutBusinessInput? upsert;

  final UserWhereUniqueInput? connect;

  final UserUpdateWithoutBusinessInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneRequiredWithoutBusinessNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedEnumUserTypeNullableFilter implements _i1.JsonSerializable {
  const NestedEnumUserTypeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  factory NestedEnumUserTypeNullableFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedEnumUserTypeNullableFilterFromJson(json);

  final UserType? equals;

  @JsonKey(name: r'in')
  final Iterable<UserType>? $in;

  final Iterable<UserType>? notIn;

  final UserType? not;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedEnumUserTypeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedEnumUserTypeNullableWithAggregatesFilter
    implements _i1.JsonSerializable {
  const NestedEnumUserTypeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedEnumUserTypeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedEnumUserTypeNullableWithAggregatesFilterFromJson(json);

  final UserType? equals;

  @JsonKey(name: r'in')
  final Iterable<UserType>? $in;

  final Iterable<UserType>? notIn;

  final UserType? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedEnumUserTypeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedEnumUserTypeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedEnumUserTypeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateWithoutOwnerInput implements _i1.JsonSerializable {
  const BusinessCreateWithoutOwnerInput({required this.name});

  factory BusinessCreateWithoutOwnerInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessCreateWithoutOwnerInputFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessCreateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedCreateWithoutOwnerInput implements _i1.JsonSerializable {
  const BusinessUncheckedCreateWithoutOwnerInput({
    this.id,
    required this.name,
  });

  factory BusinessUncheckedCreateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedCreateWithoutOwnerInputFromJson(json);

  final int? id;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedCreateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateOrConnectWithoutOwnerInput implements _i1.JsonSerializable {
  const BusinessCreateOrConnectWithoutOwnerInput({
    required this.where,
    required this.create,
  });

  factory BusinessCreateOrConnectWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessCreateOrConnectWithoutOwnerInputFromJson(json);

  final BusinessWhereUniqueInput where;

  final BusinessCreateWithoutOwnerInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessCreateOrConnectWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateManyOwnerInputEnvelope implements _i1.JsonSerializable {
  const BusinessCreateManyOwnerInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory BusinessCreateManyOwnerInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessCreateManyOwnerInputEnvelopeFromJson(json);

  final Iterable<BusinessCreateManyOwnerInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessCreateManyOwnerInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class BusinessUpsertWithWhereUniqueWithoutOwnerInput
    implements _i1.JsonSerializable {
  const BusinessUpsertWithWhereUniqueWithoutOwnerInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory BusinessUpsertWithWhereUniqueWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUpsertWithWhereUniqueWithoutOwnerInputFromJson(json);

  final BusinessWhereUniqueInput where;

  final BusinessUpdateWithoutOwnerInput update;

  final BusinessCreateWithoutOwnerInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpsertWithWhereUniqueWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateWithWhereUniqueWithoutOwnerInput
    implements _i1.JsonSerializable {
  const BusinessUpdateWithWhereUniqueWithoutOwnerInput({
    required this.where,
    required this.data,
  });

  factory BusinessUpdateWithWhereUniqueWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUpdateWithWhereUniqueWithoutOwnerInputFromJson(json);

  final BusinessWhereUniqueInput where;

  final BusinessUpdateWithoutOwnerInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpdateWithWhereUniqueWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateManyWithWhereWithoutOwnerInput
    implements _i1.JsonSerializable {
  const BusinessUpdateManyWithWhereWithoutOwnerInput({
    required this.where,
    required this.data,
  });

  factory BusinessUpdateManyWithWhereWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUpdateManyWithWhereWithoutOwnerInputFromJson(json);

  final BusinessScalarWhereInput where;

  final BusinessUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpdateManyWithWhereWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessScalarWhereInput implements _i1.JsonSerializable {
  const BusinessScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessScalarWhereInputFromJson(json);

  final Iterable<BusinessScalarWhereInput>? AND;

  final Iterable<BusinessScalarWhereInput>? OR;

  final Iterable<BusinessScalarWhereInput>? NOT;

  final IntFilter? id;

  final IntFilter? ownerId;

  final StringFilter? name;

  @override
  Map<String, dynamic> toJson() => _$BusinessScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutBusinessInput implements _i1.JsonSerializable {
  const UserCreateWithoutBusinessInput({
    required this.username,
    required this.password,
    this.userType,
  });

  factory UserCreateWithoutBusinessInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutBusinessInputFromJson(json);

  final String username;

  final String password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserCreateWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutBusinessInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutBusinessInput({
    this.id,
    required this.username,
    required this.password,
    this.userType,
  });

  factory UserUncheckedCreateWithoutBusinessInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutBusinessInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutBusinessInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutBusinessInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutBusinessInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutBusinessInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutBusinessInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutBusinessInput implements _i1.JsonSerializable {
  const UserUpsertWithoutBusinessInput({
    required this.update,
    required this.create,
  });

  factory UserUpsertWithoutBusinessInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpsertWithoutBusinessInputFromJson(json);

  final UserUpdateWithoutBusinessInput update;

  final UserCreateWithoutBusinessInput create;

  @override
  Map<String, dynamic> toJson() => _$UserUpsertWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutBusinessInput implements _i1.JsonSerializable {
  const UserUpdateWithoutBusinessInput({
    this.username,
    this.password,
    this.userType,
  });

  factory UserUpdateWithoutBusinessInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutBusinessInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutBusinessInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutBusinessInput({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserUncheckedUpdateWithoutBusinessInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutBusinessInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class BusinessCreateManyOwnerInput implements _i1.JsonSerializable {
  const BusinessCreateManyOwnerInput({
    this.id,
    required this.name,
  });

  factory BusinessCreateManyOwnerInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessCreateManyOwnerInputFromJson(json);

  final int? id;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$BusinessCreateManyOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUpdateWithoutOwnerInput implements _i1.JsonSerializable {
  const BusinessUpdateWithoutOwnerInput({this.name});

  factory BusinessUpdateWithoutOwnerInput.fromJson(Map<String, dynamic> json) =>
      _$BusinessUpdateWithoutOwnerInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUpdateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedUpdateWithoutOwnerInput implements _i1.JsonSerializable {
  const BusinessUncheckedUpdateWithoutOwnerInput({
    this.id,
    this.name,
  });

  factory BusinessUncheckedUpdateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedUpdateWithoutOwnerInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedUpdateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class BusinessUncheckedUpdateManyWithoutBusinessInput
    implements _i1.JsonSerializable {
  const BusinessUncheckedUpdateManyWithoutBusinessInput({
    this.id,
    this.name,
  });

  factory BusinessUncheckedUpdateManyWithoutBusinessInput.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessUncheckedUpdateManyWithoutBusinessInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$BusinessUncheckedUpdateManyWithoutBusinessInputToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.username,
    required this.password,
    this.userType,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int id;

  final String username;

  final String password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Business implements _i1.JsonSerializable {
  const Business({
    required this.id,
    required this.ownerId,
    required this.name,
  });

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);

  final int id;

  final int ownerId;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$BusinessToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Business>?> business({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithRelationInput>? orderBy,
    BusinessWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BusinessScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'business',
          fields: fields,
          args: args,
        )
      ]),
      key: r'business',
    );
    final fields = BusinessScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> business) =>
        business.map((Map business) => Business.fromJson(business.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UserCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountOutputType(query);
  }
}

class BusinessFluent<T> extends _i1.PrismaFluent<T> {
  const BusinessFluent(
    super.original,
    super.$query,
  );

  UserFluent<User> owner() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'owner',
          fields: fields,
        )
      ]),
      key: r'owner',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension BusinessModelDelegateExtension on _i1.ModelDelegate<Business> {
  BusinessFluent<Business?> findUnique(
      {required BusinessWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquebusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : null);
    return BusinessFluent<Business?>(
      future,
      query,
    );
  }

  BusinessFluent<Business> findUniqueOrThrow(
      {required BusinessWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquebusinessOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquebusinessOrThrow',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: business)'));
    return BusinessFluent<Business>(
      future,
      query,
    );
  }

  BusinessFluent<Business?> findFirst({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithRelationInput>? orderBy,
    BusinessWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BusinessScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstbusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstbusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : null);
    return BusinessFluent<Business?>(
      future,
      query,
    );
  }

  BusinessFluent<Business> findFirstOrThrow({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithRelationInput>? orderBy,
    BusinessWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BusinessScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstbusinessOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstbusinessOrThrow',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: business)'));
    return BusinessFluent<Business>(
      future,
      query,
    );
  }

  Future<Iterable<Business>> findMany({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithRelationInput>? orderBy,
    BusinessWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BusinessScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManybusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManybusiness',
    );
    final fields = BusinessScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManybusiness) => findManybusiness.map(
        (Map findManybusiness) => Business.fromJson(findManybusiness.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  BusinessFluent<Business> create({required BusinessCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnebusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: business)'));
    return BusinessFluent<Business>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<BusinessCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManybusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManybusiness',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManybusiness) =>
        AffectedRowsOutput.fromJson(createManybusiness.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BusinessFluent<Business?> update({
    required BusinessUpdateInput data,
    required BusinessWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnebusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : null);
    return BusinessFluent<Business?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required BusinessUpdateManyMutationInput data,
    BusinessWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManybusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManybusiness',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManybusiness) =>
        AffectedRowsOutput.fromJson(updateManybusiness.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BusinessFluent<Business> upsert({
    required BusinessWhereUniqueInput where,
    required BusinessCreateInput create,
    required BusinessUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnebusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: business)'));
    return BusinessFluent<Business>(
      future,
      query,
    );
  }

  BusinessFluent<Business?> delete({required BusinessWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnebusiness',
    );
    final future = query(BusinessScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Business.fromJson(json.cast<String, dynamic>())
            : null);
    return BusinessFluent<Business?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({BusinessWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManybusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManybusiness',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManybusiness) =>
        AffectedRowsOutput.fromJson(deleteManybusiness.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateBusiness aggregate({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithRelationInput>? orderBy,
    BusinessWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatebusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatebusiness',
    );
    return AggregateBusiness(query);
  }

  Future<Iterable<BusinessGroupByOutputType>> groupBy({
    BusinessWhereInput? where,
    Iterable<BusinessOrderByWithAggregationInput>? orderBy,
    required Iterable<BusinessScalarFieldEnum> by,
    BusinessScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBybusiness',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBybusiness',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBybusiness) =>
        groupBybusiness.map((Map groupBybusiness) =>
            BusinessGroupByOutputType.fromJson(groupBybusiness.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.username,
    this.password,
    this.userType,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final int? id;

  final String? username;

  final String? password;

  final UserType? userType;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class BusinessGroupByOutputType implements _i1.JsonSerializable {
  const BusinessGroupByOutputType({
    this.id,
    this.ownerId,
    this.name,
  });

  factory BusinessGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$BusinessGroupByOutputTypeFromJson(json);

  final int? id;

  final int? ownerId;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$BusinessGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UserAvgAggregateOutputType(query);
  }

  UserSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UserSumAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateBusiness {
  const AggregateBusiness(this.$query);

  final _i1.PrismaFluentQuery $query;

  BusinessCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BusinessCountAggregateOutputType(query);
  }

  BusinessAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return BusinessAvgAggregateOutputType(query);
  }

  BusinessSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return BusinessSumAggregateOutputType(query);
  }

  BusinessMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return BusinessMinAggregateOutputType(query);
  }

  BusinessMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return BusinessMaxAggregateOutputType(query);
  }
}

class UserCountOutputType {
  const UserCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> business({BusinessWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'business',
          fields: fields,
          args: args,
        )
      ]),
      key: r'business',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userType() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userType',
          fields: fields,
        )
      ]),
      key: r'userType',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<UserType?> userType() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userType',
          fields: fields,
        )
      ]),
      key: r'userType',
    );
    return query(const []).then((value) => $enumDecodeNullable(
          _$UserTypeEnumMap,
          value,
        ));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<UserType?> userType() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userType',
          fields: fields,
        )
      ]),
      key: r'userType',
    );
    return query(const []).then((value) => $enumDecodeNullable(
          _$UserTypeEnumMap,
          value,
        ));
  }
}

class BusinessCountAggregateOutputType {
  const BusinessCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ownerId',
          fields: fields,
        )
      ]),
      key: r'ownerId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class BusinessAvgAggregateOutputType {
  const BusinessAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ownerId',
          fields: fields,
        )
      ]),
      key: r'ownerId',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class BusinessSumAggregateOutputType {
  const BusinessSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ownerId',
          fields: fields,
        )
      ]),
      key: r'ownerId',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class BusinessMinAggregateOutputType {
  const BusinessMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ownerId',
          fields: fields,
        )
      ]),
      key: r'ownerId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class BusinessMaxAggregateOutputType {
  const BusinessMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ownerId',
          fields: fields,
        )
      ]),
      key: r'ownerId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgogIG91dHB1dCAgID0gIi4uL2V4YW1wbGUvZ2VuZXJhdGVkIgp9CgpnZW5lcmF0b3IgbW9kZWwgewogIHByb3ZpZGVyID0gImRhcnQgcnVuIG1fcHJpc21hX21vZGVsX2dlbmVyYXRvciIKICBvdXRwdXQgICA9ICIuLi9leGFtcGxlL2dlbmVyYXRlZCIKfQoKZGF0YXNvdXJjZSBkYiB7CiAgcHJvdmlkZXIgPSAicG9zdGdyZXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgVXNlciB7CiAgaWQgICAgICAgSW50ICAgICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIHVzZXJuYW1lIFN0cmluZwogIHBhc3N3b3JkIFN0cmluZwogIHVzZXJUeXBlIFVzZXJUeXBlPyAgQG1hcCgidXNlcl90eXBlIikKICBidXNpbmVzcyBidXNpbmVzc1tdCgogIEBAbWFwKCJ1c2VycyIpCn0KCm1vZGVsIGJ1c2luZXNzIHsKICBpZCAgICAgIEludCAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIG93bmVyICAgVXNlciAgIEByZWxhdGlvbihmaWVsZHM6IFtvd25lcklkXSwgcmVmZXJlbmNlczogW2lkXSkKICBvd25lcklkIEludCAgICBAbWFwKCJvd25lciIpCiAgbmFtZSAgICBTdHJpbmcgQGRiLlZhckNoYXIoMjU1KQp9CgplbnVtIFVzZXJUeXBlIHsKICBkZXZlbG9wZXIKICBhZG1pbgp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\aryaj\AppData\Local\npm-cache\_npx\2778af9cee32ff87\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Business> get business => _i1.ModelDelegate<Business>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
