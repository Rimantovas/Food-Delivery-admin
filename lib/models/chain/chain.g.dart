// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChainModel _$$_ChainModelFromJson(Map<String, dynamic> json) =>
    _$_ChainModel(
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_ChainModelToJson(_$_ChainModel instance) =>
    <String, dynamic>{
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'email': instance.email,
    };
