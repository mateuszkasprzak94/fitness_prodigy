// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../supplements_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplementsTypeModelImpl _$$SupplementsTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SupplementsTypeModelImpl(
      json['id'] as String,
      json['supplement_type'] as String,
      json['supplement_name'] as String,
      json['overview'] as String,
      json['role'] as String,
      json['source'] as String,
      json['benefits'] as String,
      json['usage'] as String,
      json['caution'] as String,
      json['conclusion'] as String,
    );

Map<String, dynamic> _$$SupplementsTypeModelImplToJson(
        _$SupplementsTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplement_type': instance.supplementType,
      'supplement_name': instance.supplementName,
      'overview': instance.overview,
      'role': instance.role,
      'source': instance.source,
      'benefits': instance.benefits,
      'usage': instance.usage,
      'caution': instance.caution,
      'conclusion': instance.conclusion,
    };
