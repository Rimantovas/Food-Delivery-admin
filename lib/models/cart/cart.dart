// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const CartModel._();

  const factory CartModel({
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @Default(0) int id,
    @JsonKey(name: 'fk_clientid') @Default(0) int clientId, //1
    @JsonKey(name: 'fk_delivery_feeid') @Default(0) int deliveryFeeId, //many
    @JsonKey(name: 'fk_packaging_feeid') @Default(0) int packagingFeeId, //many
    @JsonKey(name: 'fk_minimal_cart_feeid')
    @Default(0)
        int minimalCartFeeId, //many
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartVM with _$CartVM {
  const CartVM._();

  const factory CartVM({
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @Default(0) int id,
    @JsonKey(name: 'client_name') @Default('') String clientName,
    @JsonKey(name: 'total_products_count')
    @Default(0.0)
        double totalProductsCount,
    @JsonKey(name: 'total_products_price')
    @Default(0.0)
        double totalProductsPrice,
    @Default(0) int minimalCartFeeId, //many
  }) = _CartVM;

  factory CartVM.fromJson(Map<String, dynamic> json) => _$CartVMFromJson(json);
}
