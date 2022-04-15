// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_fee.g.dart';
part 'delivery_fee.freezed.dart';

@freezed
class DeliveryFeeModel with _$DeliveryFeeModel {
  const DeliveryFeeModel._();
  const factory DeliveryFeeModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default(0.0) double price,
  }) = _DeliveryFeeModel;

  factory DeliveryFeeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFeeModelFromJson(json);
}
