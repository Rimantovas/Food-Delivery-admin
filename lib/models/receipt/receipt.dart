// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';

part 'receipt.g.dart';
part 'receipt.freezed.dart';

@freezed
class ReceiptModel with _$ReceiptModel {
  const ReceiptModel._();
  const factory ReceiptModel({
    @Default(0) int id,
    @JsonKey(name: 'fk_cartid') @Default(0) int cartId,
    @JsonKey(name: 'final_price') @Default(0.0) double finalPrice,
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
