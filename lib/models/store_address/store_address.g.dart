// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAddressModel _$$_StoreAddressModelFromJson(Map<String, dynamic> json) =>
    _$_StoreAddressModel(
      id: json['id'] as int? ?? 0,
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      fullAddressName: json['full_address_name'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longtitude: (json['longtitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_StoreAddressModelToJson(
        _$_StoreAddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'street': instance.street,
      'full_address_name': instance.fullAddressName,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
    };
