// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_address.g.dart';
part 'store_address.freezed.dart';

@freezed
class StoreAddressModel with _$StoreAddressModel {
  const StoreAddressModel._();
  const factory StoreAddressModel({
    @Default(0) int id,
    @Default('') String city,
    @Default('') String street,
    @JsonKey(name: 'full_address_name') @Default('') String fullAddressName,
    @Default(0.0) double latitude,
    @Default(0.0) double longtitude,
  }) = _StoreAddressModel;

  factory StoreAddressModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAddressModelFromJson(json);
}
