// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';

part 'payment.g.dart';
part 'payment.freezed.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const PaymentModel._();
  const factory PaymentModel({
    @JsonKey(name: 'date_paid') @DatetimeConverter() DateTime? datePaid,
    @Default(0) int id,
    @JsonKey(name: 'final_price') @Default(0.0) double finalPrice,
    @JsonKey(name: 'fk_clientid') @Default(0) int clientId,
    @JsonKey(name: 'fk_receiptid') @Default(0) int receiptId,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
