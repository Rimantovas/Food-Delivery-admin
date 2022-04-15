// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockModel _$$_StockModelFromJson(Map<String, dynamic> json) =>
    _$_StockModel(
      id: json['id'] as int? ?? 0,
      quantity: json['quantity_in_store'] as int? ?? 0,
      storeId: json['fk_storeid'] as int? ?? 0,
      productId: json['fk_productid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StockModelToJson(_$_StockModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity_in_store': instance.quantity,
      'fk_storeid': instance.storeId,
      'fk_productid': instance.productId,
    };
