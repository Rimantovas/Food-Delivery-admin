// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      id: json['id'] as int? ?? 0,
      clientId: json['fk_clientid'] as int? ?? 0,
      deliveryFeeId: json['fk_delivery_feeid'] as int? ?? 0,
      packagingFeeId: json['fk_packaging_feeid'] as int? ?? 0,
      minimalCartFeeId: json['fk_minimal_cart_feeid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'id': instance.id,
      'fk_clientid': instance.clientId,
      'fk_delivery_feeid': instance.deliveryFeeId,
      'fk_packaging_feeid': instance.packagingFeeId,
      'fk_minimal_cart_feeid': instance.minimalCartFeeId,
    };

_$_CartVM _$$_CartVMFromJson(Map<String, dynamic> json) => _$_CartVM(
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      id: json['id'] as int? ?? 0,
      clientName: json['client_name'] as String? ?? '',
      totalProductsCount:
          (json['total_products_count'] as num?)?.toDouble() ?? 0.0,
      totalProductsPrice:
          (json['total_products_price'] as num?)?.toDouble() ?? 0.0,
      minimalCartFeeId: json['minimalCartFeeId'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CartVMToJson(_$_CartVM instance) => <String, dynamic>{
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'id': instance.id,
      'client_name': instance.clientName,
      'total_products_count': instance.totalProductsCount,
      'total_products_price': instance.totalProductsPrice,
      'minimalCartFeeId': instance.minimalCartFeeId,
    };
