// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'packaging_fee.g.dart';
part 'packaging_fee.freezed.dart';

@freezed
class PackagingFeeModel with _$PackagingFeeModel {
  const PackagingFeeModel._();
  const factory PackagingFeeModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default(0.0) double price,
  }) = _PackagingFeeModel;

  factory PackagingFeeModel.fromJson(Map<String, dynamic> json) =>
      _$PackagingFeeModelFromJson(json);
}
