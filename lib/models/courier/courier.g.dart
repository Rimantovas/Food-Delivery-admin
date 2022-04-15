// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourierModel _$$_CourierModelFromJson(Map<String, dynamic> json) =>
    _$_CourierModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      carNumberPlate: json['car_number_plate'] as String? ?? '',
    );

Map<String, dynamic> _$$_CourierModelToJson(_$_CourierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'car_number_plate': instance.carNumberPlate,
    };
