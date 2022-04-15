// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProducerModel _$$_ProducerModelFromJson(Map<String, dynamic> json) =>
    _$_ProducerModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      city: json['city'] as String? ?? '',
      country: json['country'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProducerModelToJson(_$_ProducerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'country': instance.country,
    };
