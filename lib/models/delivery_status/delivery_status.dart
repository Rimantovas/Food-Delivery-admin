// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_status.g.dart';
part 'delivery_status.freezed.dart';

@freezed
class DeliveryStatusModel with _$DeliveryStatusModel {
  const DeliveryStatusModel._();
  const factory DeliveryStatusModel({
    @Default(0) int id,
    @Default('') String name,
  }) = _DeliveryStatusModel;

  factory DeliveryStatusModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryStatusModelFromJson(json);
}
