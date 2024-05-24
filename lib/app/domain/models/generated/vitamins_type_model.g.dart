// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../vitamins_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VitaminsTypeModelImpl _$$VitaminsTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VitaminsTypeModelImpl(
      json['id'] as String,
      json['vitamin_type'] as String,
      json['vitamin_name'] as String,
      json['overview'] as String,
      json['benefits'] as String,
      json['source'] as String,
      json['usage'] as String,
      json['caution'] as String,
      json['conclusion'] as String,
    );

Map<String, dynamic> _$$VitaminsTypeModelImplToJson(
        _$VitaminsTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vitamin_type': instance.vitaminType,
      'vitamin_name': instance.vitaminName,
      'overview': instance.overview,
      'benefits': instance.benefits,
      'source': instance.source,
      'usage': instance.usage,
      'caution': instance.caution,
      'conclusion': instance.conclusion,
    };
