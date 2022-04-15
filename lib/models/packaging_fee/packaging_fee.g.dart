// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packaging_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackagingFeeModel _$$_PackagingFeeModelFromJson(Map<String, dynamic> json) =>
    _$_PackagingFeeModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_PackagingFeeModelToJson(
        _$_PackagingFeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
    };
