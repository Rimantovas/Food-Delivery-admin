// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courier.g.dart';
part 'courier.freezed.dart';

@freezed
class CourierModel with _$CourierModel {
  const CourierModel._();
  const factory CourierModel({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'car_number_plate') @Default('') String carNumberPlate,
  }) = _CourierModel;

  factory CourierModel.fromJson(Map<String, dynamic> json) =>
      _$CourierModelFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
