// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_cart_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinimalCartFeeModel _$$_MinimalCartFeeModelFromJson(
        Map<String, dynamic> json) =>
    _$_MinimalCartFeeModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      minimalCartPrice: (json['minimal_cart_fee'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_MinimalCartFeeModelToJson(
        _$_MinimalCartFeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'minimal_cart_fee': instance.minimalCartPrice,
    };
