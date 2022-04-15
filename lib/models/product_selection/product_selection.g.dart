// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSelectionModel _$$_ProductSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductSelectionModel(
      quantity: json['quantity'] as int? ?? 0,
      cartId: json['fk_cartid'] as int? ?? 0,
      productId: json['fk_productid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductSelectionModelToJson(
        _$_ProductSelectionModel instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'fk_cartid': instance.cartId,
      'fk_productid': instance.productId,
    };
