// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreModel _$$_StoreModelFromJson(Map<String, dynamic> json) =>
    _$_StoreModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      storeAddressId: json['fk_store_addressid'] as int? ?? 0,
      chainId: json['fk_chainid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StoreModelToJson(_$_StoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fk_store_addressid': instance.storeAddressId,
      'fk_chainid': instance.chainId,
    };
