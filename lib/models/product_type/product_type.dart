// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type.g.dart';
part 'product_type.freezed.dart';

@freezed
class ProductTypeModel with _$ProductTypeModel {
  const ProductTypeModel._();
  const factory ProductTypeModel({
    @Default(0) int id,
    @Default('') String name,
  }) = _ProductTypeModel;

  factory ProductTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeModelFromJson(json);
}
