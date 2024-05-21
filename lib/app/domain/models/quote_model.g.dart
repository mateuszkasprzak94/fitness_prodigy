// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteModelImpl _$$QuoteModelImplFromJson(Map<String, dynamic> json) =>
    _$QuoteModelImpl(
      json['id'] as String,
      json['quote'] as String,
      json['author'] as String,
      const TimestampSerializer().fromJson(json['dob']),
    );

Map<String, dynamic> _$$QuoteModelImplToJson(_$QuoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quote': instance.quote,
      'author': instance.author,
      'dob': const TimestampSerializer().toJson(instance.dob),
    };
