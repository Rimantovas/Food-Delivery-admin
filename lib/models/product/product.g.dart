// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      description: json['description'] as String? ?? '',
      unitIncrementation: json['unit_incrementation'] as int? ?? 0,
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      pricePerIncrementation:
          (json['price_per_incrementation'] as num?)?.toDouble() ?? 0.0,
      unitId: json['unit'] as int? ?? 0,
      typeId: json['type'] as int? ?? 0,
      producerId: json['fk_producerid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'unit_incrementation': instance.unitIncrementation,
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'price_per_incrementation': instance.pricePerIncrementation,
      'unit': instance.unitId,
      'type': instance.typeId,
      'fk_producerid': instance.producerId,
    };

_$_ProductVM _$$_ProductVMFromJson(Map<String, dynamic> json) => _$_ProductVM(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      description: json['description'] as String? ?? '',
      unitIncrementation: json['unit_incrementation'] as int? ?? 0,
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      pricePerIncrementation:
          (json['price_per_incrementation'] as num?)?.toDouble() ?? 0.0,
      unit: json['unit'] as String? ?? '',
      type: json['type'] as String? ?? '',
      producer: json['producer'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductVMToJson(_$_ProductVM instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'unit_incrementation': instance.unitIncrementation,
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'price_per_incrementation': instance.pricePerIncrementation,
      'unit': instance.unit,
      'type': instance.type,
      'producer': instance.producer,
    };
