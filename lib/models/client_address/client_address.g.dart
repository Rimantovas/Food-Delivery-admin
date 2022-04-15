// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientAddressModel _$$_ClientAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_ClientAddressModel(
      id: json['id'] as int? ?? 0,
      clientId: json['fk_clientid'] as int? ?? 0,
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      comments: json['comments'] as String? ?? '',
      fullAddressName: json['full_address_name'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longtitude: (json['longtitude'] as num?)?.toDouble() ?? 0.0,
      buildingTypeId: json['building_type'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ClientAddressModelToJson(
        _$_ClientAddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fk_clientid': instance.clientId,
      'city': instance.city,
      'street': instance.street,
      'comments': instance.comments,
      'full_address_name': instance.fullAddressName,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
      'building_type': instance.buildingTypeId,
    };
