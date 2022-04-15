// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryFeeModel _$$_DeliveryFeeModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryFeeModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_DeliveryFeeModelToJson(_$_DeliveryFeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
    };
