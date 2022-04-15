// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel({
    @Default(0) int id,
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @JsonKey(name: 'planned_delivery_date')
    @DatetimeConverter()
        DateTime? plannedDeliveryDate,
    @JsonKey(name: 'delivery_status') @Default(0) int deliveryStatusId,
    @JsonKey(name: 'fk_client_addressid') @Default(0) int clientAddressId,
    @JsonKey(name: 'fk_courierid') @Default(0) int courierId,
    @JsonKey(name: 'fk_store_addressid') @Default(0) int storeAddressId,
    @JsonKey(name: 'fk_receiptId') @Default(0) int receiptId,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
