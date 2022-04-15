// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptModel _$$_ReceiptModelFromJson(Map<String, dynamic> json) =>
    _$_ReceiptModel(
      id: json['id'] as int? ?? 0,
      cartId: json['fk_cartid'] as int? ?? 0,
      finalPrice: (json['final_price'] as num?)?.toDouble() ?? 0.0,
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
    );

Map<String, dynamic> _$$_ReceiptModelToJson(_$_ReceiptModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fk_cartid': instance.cartId,
      'final_price': instance.finalPrice,
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
    };
