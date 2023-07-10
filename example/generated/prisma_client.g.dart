// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      userType: json['userType'] == null
          ? null
          : EnumUserTypeNullableFilter.fromJson(
              json['userType'] as Map<String, dynamic>),
      business: json['business'] == null
          ? null
          : BusinessListRelationFilter.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', instance.userType?.toJson());
  writeNotNull('business', instance.business?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      userType: $enumDecodeNullable(_$SortOrderEnumMap, json['userType']),
      business: json['business'] == null
          ? null
          : BusinessOrderByRelationAggregateInput.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('userType', _$SortOrderEnumMap[instance.userType]);
  writeNotNull('business', instance.business?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      userType: $enumDecodeNullable(_$SortOrderEnumMap, json['userType']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('userType', _$SortOrderEnumMap[instance.userType]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: json['userType'] == null
          ? null
          : EnumUserTypeNullableWithAggregatesFilter.fromJson(
              json['userType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', instance.userType?.toJson());
  return val;
}

BusinessWhereInput _$BusinessWhereInputFromJson(Map<String, dynamic> json) =>
    BusinessWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => BusinessWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => BusinessWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => BusinessWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      ownerId: json['ownerId'] == null
          ? null
          : IntFilter.fromJson(json['ownerId'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UserRelationFilter.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessWhereInputToJson(BusinessWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('ownerId', instance.ownerId?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  return val;
}

BusinessOrderByWithRelationInput _$BusinessOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    BusinessOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      owner: json['owner'] == null
          ? null
          : UserOrderByWithRelationInput.fromJson(
              json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessOrderByWithRelationInputToJson(
    BusinessOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('owner', instance.owner?.toJson());
  return val;
}

BusinessWhereUniqueInput _$BusinessWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    BusinessWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$BusinessWhereUniqueInputToJson(
    BusinessWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

BusinessOrderByWithAggregationInput
    _$BusinessOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        BusinessOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
          name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
          $count: json['_count'] == null
              ? null
              : BusinessCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : BusinessAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : BusinessMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : BusinessMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : BusinessSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessOrderByWithAggregationInputToJson(
    BusinessOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

BusinessScalarWhereWithAggregatesInput
    _$BusinessScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        BusinessScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              BusinessScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              BusinessScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              BusinessScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          ownerId: json['ownerId'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['ownerId'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['name'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessScalarWhereWithAggregatesInputToJson(
    BusinessScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('ownerId', instance.ownerId?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      business: json['business'] == null
          ? null
          : BusinessCreateNestedManyWithoutOwnerInput.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{
    'username': instance.username,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  writeNotNull('business', instance.business?.toJson());
  return val;
}

const _$UserTypeEnumMap = {
  UserType.developer: 'developer',
  UserType.admin: 'admin',
};

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as int?,
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      business: json['business'] == null
          ? null
          : BusinessUncheckedCreateNestedManyWithoutOwnerInput.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  writeNotNull('business', instance.business?.toJson());
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      business: json['business'] == null
          ? null
          : BusinessUpdateManyWithoutOwnerNestedInput.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  writeNotNull('business', instance.business?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      business: json['business'] == null
          ? null
          : BusinessUncheckedUpdateManyWithoutOwnerNestedInput.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  writeNotNull('business', instance.business?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as int?,
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

BusinessCreateInput _$BusinessCreateInputFromJson(Map<String, dynamic> json) =>
    BusinessCreateInput(
      name: json['name'] as String,
      owner: UserCreateNestedOneWithoutBusinessInput.fromJson(
          json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessCreateInputToJson(
        BusinessCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner.toJson(),
    };

BusinessUncheckedCreateInput _$BusinessUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessUncheckedCreateInput(
      id: json['id'] as int?,
      ownerId: json['ownerId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BusinessUncheckedCreateInputToJson(
    BusinessUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['ownerId'] = instance.ownerId;
  val['name'] = instance.name;
  return val;
}

BusinessUpdateInput _$BusinessUpdateInputFromJson(Map<String, dynamic> json) =>
    BusinessUpdateInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UserUpdateOneRequiredWithoutBusinessNestedInput.fromJson(
              json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessUpdateInputToJson(BusinessUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  return val;
}

BusinessUncheckedUpdateInput _$BusinessUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      ownerId: json['ownerId'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['ownerId'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessUncheckedUpdateInputToJson(
    BusinessUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('ownerId', instance.ownerId?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

BusinessCreateManyInput _$BusinessCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    BusinessCreateManyInput(
      id: json['id'] as int?,
      ownerId: json['ownerId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BusinessCreateManyInputToJson(
    BusinessCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['ownerId'] = instance.ownerId;
  val['name'] = instance.name;
  return val;
}

BusinessUpdateManyMutationInput _$BusinessUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    BusinessUpdateManyMutationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessUpdateManyMutationInputToJson(
    BusinessUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  return val;
}

BusinessUncheckedUpdateManyInput _$BusinessUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    BusinessUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      ownerId: json['ownerId'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['ownerId'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessUncheckedUpdateManyInputToJson(
    BusinessUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('ownerId', instance.ownerId?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

EnumUserTypeNullableFilter _$EnumUserTypeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    EnumUserTypeNullableFilter(
      equals: $enumDecodeNullable(_$UserTypeEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
      not: $enumDecodeNullable(_$UserTypeEnumMap, json['not']),
    );

Map<String, dynamic> _$EnumUserTypeNullableFilterToJson(
    EnumUserTypeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$UserTypeEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull(
      'notIn', instance.notIn?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull('not', _$UserTypeEnumMap[instance.not]);
  return val;
}

BusinessListRelationFilter _$BusinessListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    BusinessListRelationFilter(
      every: json['every'] == null
          ? null
          : BusinessWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : BusinessWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : BusinessWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessListRelationFilterToJson(
    BusinessListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) {
  final val = <String, dynamic>{
    'sort': _$SortOrderEnumMap[instance.sort]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nulls', _$NullsOrderEnumMap[instance.nulls]);
  return val;
}

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

BusinessOrderByRelationAggregateInput
    _$BusinessOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        BusinessOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$BusinessOrderByRelationAggregateInputToJson(
    BusinessOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      userType: $enumDecodeNullable(_$SortOrderEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('userType', _$SortOrderEnumMap[instance.userType]);
  return val;
}

UserAvgOrderByAggregateInput _$UserAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserAvgOrderByAggregateInputToJson(
    UserAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      userType: $enumDecodeNullable(_$SortOrderEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('userType', _$SortOrderEnumMap[instance.userType]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      userType: $enumDecodeNullable(_$SortOrderEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('userType', _$SortOrderEnumMap[instance.userType]);
  return val;
}

UserSumOrderByAggregateInput _$UserSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserSumOrderByAggregateInputToJson(
    UserSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

EnumUserTypeNullableWithAggregatesFilter
    _$EnumUserTypeNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        EnumUserTypeNullableWithAggregatesFilter(
          equals: $enumDecodeNullable(_$UserTypeEnumMap, json['equals']),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
          not: $enumDecodeNullable(_$UserTypeEnumMap, json['not']),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedEnumUserTypeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedEnumUserTypeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EnumUserTypeNullableWithAggregatesFilterToJson(
    EnumUserTypeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$UserTypeEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull(
      'notIn', instance.notIn?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull('not', _$UserTypeEnumMap[instance.not]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) =>
    UserRelationFilter(
      $is: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRelationFilterToJson(UserRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

BusinessCountOrderByAggregateInput _$BusinessCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$BusinessCountOrderByAggregateInputToJson(
    BusinessCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

BusinessAvgOrderByAggregateInput _$BusinessAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
    );

Map<String, dynamic> _$BusinessAvgOrderByAggregateInputToJson(
    BusinessAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  return val;
}

BusinessMaxOrderByAggregateInput _$BusinessMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$BusinessMaxOrderByAggregateInputToJson(
    BusinessMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

BusinessMinOrderByAggregateInput _$BusinessMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$BusinessMinOrderByAggregateInputToJson(
    BusinessMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

BusinessSumOrderByAggregateInput _$BusinessSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BusinessSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['ownerId']),
    );

Map<String, dynamic> _$BusinessSumOrderByAggregateInputToJson(
    BusinessSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('ownerId', _$SortOrderEnumMap[instance.ownerId]);
  return val;
}

BusinessCreateNestedManyWithoutOwnerInput
    _$BusinessCreateNestedManyWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessCreateNestedManyWithoutOwnerInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              BusinessCreateWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => BusinessCreateOrConnectWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : BusinessCreateManyOwnerInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$BusinessCreateNestedManyWithoutOwnerInputToJson(
    BusinessCreateNestedManyWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

BusinessUncheckedCreateNestedManyWithoutOwnerInput
    _$BusinessUncheckedCreateNestedManyWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUncheckedCreateNestedManyWithoutOwnerInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              BusinessCreateWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => BusinessCreateOrConnectWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : BusinessCreateManyOwnerInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$BusinessUncheckedCreateNestedManyWithoutOwnerInputToJson(
    BusinessUncheckedCreateNestedManyWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableEnumUserTypeFieldUpdateOperationsInput
    _$NullableEnumUserTypeFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableEnumUserTypeFieldUpdateOperationsInput(
          set: $enumDecodeNullable(_$UserTypeEnumMap, json['set']),
        );

Map<String, dynamic> _$NullableEnumUserTypeFieldUpdateOperationsInputToJson(
    NullableEnumUserTypeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', _$UserTypeEnumMap[instance.set]);
  return val;
}

BusinessUpdateManyWithoutOwnerNestedInput
    _$BusinessUpdateManyWithoutOwnerNestedInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUpdateManyWithoutOwnerNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              BusinessCreateWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => BusinessCreateOrConnectWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              BusinessUpsertWithWhereUniqueWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : BusinessCreateManyOwnerInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              BusinessUpdateWithWhereUniqueWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              BusinessUpdateManyWithWhereWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              BusinessScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$BusinessUpdateManyWithoutOwnerNestedInputToJson(
    BusinessUpdateManyWithoutOwnerNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

BusinessUncheckedUpdateManyWithoutOwnerNestedInput
    _$BusinessUncheckedUpdateManyWithoutOwnerNestedInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUncheckedUpdateManyWithoutOwnerNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              BusinessCreateWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => BusinessCreateOrConnectWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              BusinessUpsertWithWhereUniqueWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : BusinessCreateManyOwnerInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              BusinessWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              BusinessUpdateWithWhereUniqueWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              BusinessUpdateManyWithWhereWithoutOwnerInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              BusinessScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$BusinessUncheckedUpdateManyWithoutOwnerNestedInputToJson(
    BusinessUncheckedUpdateManyWithoutOwnerNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UserCreateNestedOneWithoutBusinessInput
    _$UserCreateNestedOneWithoutBusinessInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateNestedOneWithoutBusinessInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutBusinessInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutBusinessInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateNestedOneWithoutBusinessInputToJson(
    UserCreateNestedOneWithoutBusinessInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

UserUpdateOneRequiredWithoutBusinessNestedInput
    _$UserUpdateOneRequiredWithoutBusinessNestedInputFromJson(
            Map<String, dynamic> json) =>
        UserUpdateOneRequiredWithoutBusinessNestedInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutBusinessInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutBusinessInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UserUpsertWithoutBusinessInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UserUpdateWithoutBusinessInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUpdateOneRequiredWithoutBusinessNestedInputToJson(
    UserUpdateOneRequiredWithoutBusinessNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedEnumUserTypeNullableFilter _$NestedEnumUserTypeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedEnumUserTypeNullableFilter(
      equals: $enumDecodeNullable(_$UserTypeEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
      not: $enumDecodeNullable(_$UserTypeEnumMap, json['not']),
    );

Map<String, dynamic> _$NestedEnumUserTypeNullableFilterToJson(
    NestedEnumUserTypeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$UserTypeEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull(
      'notIn', instance.notIn?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull('not', _$UserTypeEnumMap[instance.not]);
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedEnumUserTypeNullableWithAggregatesFilter
    _$NestedEnumUserTypeNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedEnumUserTypeNullableWithAggregatesFilter(
          equals: $enumDecodeNullable(_$UserTypeEnumMap, json['equals']),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$UserTypeEnumMap, e)),
          not: $enumDecodeNullable(_$UserTypeEnumMap, json['not']),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedEnumUserTypeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedEnumUserTypeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedEnumUserTypeNullableWithAggregatesFilterToJson(
    NestedEnumUserTypeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$UserTypeEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull(
      'notIn', instance.notIn?.map((e) => _$UserTypeEnumMap[e]!).toList());
  writeNotNull('not', _$UserTypeEnumMap[instance.not]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

BusinessCreateWithoutOwnerInput _$BusinessCreateWithoutOwnerInputFromJson(
        Map<String, dynamic> json) =>
    BusinessCreateWithoutOwnerInput(
      name: json['name'] as String,
    );

Map<String, dynamic> _$BusinessCreateWithoutOwnerInputToJson(
        BusinessCreateWithoutOwnerInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

BusinessUncheckedCreateWithoutOwnerInput
    _$BusinessUncheckedCreateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUncheckedCreateWithoutOwnerInput(
          id: json['id'] as int?,
          name: json['name'] as String,
        );

Map<String, dynamic> _$BusinessUncheckedCreateWithoutOwnerInputToJson(
    BusinessUncheckedCreateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  return val;
}

BusinessCreateOrConnectWithoutOwnerInput
    _$BusinessCreateOrConnectWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessCreateOrConnectWithoutOwnerInput(
          where: BusinessWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: BusinessCreateWithoutOwnerInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessCreateOrConnectWithoutOwnerInputToJson(
        BusinessCreateOrConnectWithoutOwnerInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

BusinessCreateManyOwnerInputEnvelope
    _$BusinessCreateManyOwnerInputEnvelopeFromJson(Map<String, dynamic> json) =>
        BusinessCreateManyOwnerInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              BusinessCreateManyOwnerInput.fromJson(e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$BusinessCreateManyOwnerInputEnvelopeToJson(
    BusinessCreateManyOwnerInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

BusinessUpsertWithWhereUniqueWithoutOwnerInput
    _$BusinessUpsertWithWhereUniqueWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUpsertWithWhereUniqueWithoutOwnerInput(
          where: BusinessWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: BusinessUpdateWithoutOwnerInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: BusinessCreateWithoutOwnerInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessUpsertWithWhereUniqueWithoutOwnerInputToJson(
        BusinessUpsertWithWhereUniqueWithoutOwnerInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

BusinessUpdateWithWhereUniqueWithoutOwnerInput
    _$BusinessUpdateWithWhereUniqueWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUpdateWithWhereUniqueWithoutOwnerInput(
          where: BusinessWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: BusinessUpdateWithoutOwnerInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessUpdateWithWhereUniqueWithoutOwnerInputToJson(
        BusinessUpdateWithWhereUniqueWithoutOwnerInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

BusinessUpdateManyWithWhereWithoutOwnerInput
    _$BusinessUpdateManyWithWhereWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUpdateManyWithWhereWithoutOwnerInput(
          where: BusinessScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: BusinessUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessUpdateManyWithWhereWithoutOwnerInputToJson(
        BusinessUpdateManyWithWhereWithoutOwnerInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

BusinessScalarWhereInput _$BusinessScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    BusinessScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => BusinessScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => BusinessScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => BusinessScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      ownerId: json['ownerId'] == null
          ? null
          : IntFilter.fromJson(json['ownerId'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessScalarWhereInputToJson(
    BusinessScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('ownerId', instance.ownerId?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

UserCreateWithoutBusinessInput _$UserCreateWithoutBusinessInputFromJson(
        Map<String, dynamic> json) =>
    UserCreateWithoutBusinessInput(
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserCreateWithoutBusinessInputToJson(
    UserCreateWithoutBusinessInput instance) {
  final val = <String, dynamic>{
    'username': instance.username,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

UserUncheckedCreateWithoutBusinessInput
    _$UserUncheckedCreateWithoutBusinessInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedCreateWithoutBusinessInput(
          id: json['id'] as int?,
          username: json['username'] as String,
          password: json['password'] as String,
          userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
        );

Map<String, dynamic> _$UserUncheckedCreateWithoutBusinessInputToJson(
    UserUncheckedCreateWithoutBusinessInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

UserCreateOrConnectWithoutBusinessInput
    _$UserCreateOrConnectWithoutBusinessInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateOrConnectWithoutBusinessInput(
          where: UserWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UserCreateWithoutBusinessInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateOrConnectWithoutBusinessInputToJson(
        UserCreateOrConnectWithoutBusinessInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UserUpsertWithoutBusinessInput _$UserUpsertWithoutBusinessInputFromJson(
        Map<String, dynamic> json) =>
    UserUpsertWithoutBusinessInput(
      update: UserUpdateWithoutBusinessInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UserCreateWithoutBusinessInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpsertWithoutBusinessInputToJson(
        UserUpsertWithoutBusinessInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UserUpdateWithoutBusinessInput _$UserUpdateWithoutBusinessInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateWithoutBusinessInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserUpdateWithoutBusinessInputToJson(
    UserUpdateWithoutBusinessInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

UserUncheckedUpdateWithoutBusinessInput
    _$UserUncheckedUpdateWithoutBusinessInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedUpdateWithoutBusinessInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
        );

Map<String, dynamic> _$UserUncheckedUpdateWithoutBusinessInputToJson(
    UserUncheckedUpdateWithoutBusinessInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

BusinessCreateManyOwnerInput _$BusinessCreateManyOwnerInputFromJson(
        Map<String, dynamic> json) =>
    BusinessCreateManyOwnerInput(
      id: json['id'] as int?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BusinessCreateManyOwnerInputToJson(
    BusinessCreateManyOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  return val;
}

BusinessUpdateWithoutOwnerInput _$BusinessUpdateWithoutOwnerInputFromJson(
        Map<String, dynamic> json) =>
    BusinessUpdateWithoutOwnerInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessUpdateWithoutOwnerInputToJson(
    BusinessUpdateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  return val;
}

BusinessUncheckedUpdateWithoutOwnerInput
    _$BusinessUncheckedUpdateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUncheckedUpdateWithoutOwnerInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessUncheckedUpdateWithoutOwnerInputToJson(
    BusinessUncheckedUpdateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

BusinessUncheckedUpdateManyWithoutBusinessInput
    _$BusinessUncheckedUpdateManyWithoutBusinessInputFromJson(
            Map<String, dynamic> json) =>
        BusinessUncheckedUpdateManyWithoutBusinessInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BusinessUncheckedUpdateManyWithoutBusinessInputToJson(
    BusinessUncheckedUpdateManyWithoutBusinessInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'username': instance.username,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

Business _$BusinessFromJson(Map<String, dynamic> json) => Business(
      id: json['id'] as int,
      ownerId: json['ownerId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BusinessToJson(Business instance) => <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  return val;
}

BusinessGroupByOutputType _$BusinessGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BusinessGroupByOutputType(
      id: json['id'] as int?,
      ownerId: json['ownerId'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BusinessGroupByOutputTypeToJson(
    BusinessGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('name', instance.name);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
