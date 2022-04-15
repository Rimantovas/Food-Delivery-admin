// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'minimal_cart_fee.g.dart';
part 'minimal_cart_fee.freezed.dart';

@freezed
class MinimalCartFeeModel with _$MinimalCartFeeModel {
  const MinimalCartFeeModel._();
  const factory MinimalCartFeeModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default(0.0) double price,
    @JsonKey(name: 'minimal_cart_fee') @Default(0.0) double minimalCartPrice,
  }) = _MinimalCartFeeModel;

  factory MinimalCartFeeModel.fromJson(Map<String, dynamic> json) =>
      _$MinimalCartFeeModelFromJson(json);
}
