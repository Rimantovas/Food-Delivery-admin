// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int? ?? 0,
      dateCreated: const DatetimeConverter().fromJson(json['date_created']),
      plannedDeliveryDate:
          const DatetimeConverter().fromJson(json['planned_delivery_date']),
      deliveryStatusId: json['delivery_status'] as int? ?? 0,
      clientAddressId: json['fk_client_addressid'] as int? ?? 0,
      courierId: json['fk_courierid'] as int? ?? 0,
      storeAddressId: json['fk_store_addressid'] as int? ?? 0,
      receiptId: json['fk_receiptId'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': const DatetimeConverter().toJson(instance.dateCreated),
      'planned_delivery_date':
          const DatetimeConverter().toJson(instance.plannedDeliveryDate),
      'delivery_status': instance.deliveryStatusId,
      'fk_client_addressid': instance.clientAddressId,
      'fk_courierid': instance.courierId,
      'fk_store_addressid': instance.storeAddressId,
      'fk_receiptId': instance.receiptId,
    };
