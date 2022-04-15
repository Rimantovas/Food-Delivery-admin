// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_selection.g.dart';
part 'product_selection.freezed.dart';

@freezed
class ProductSelectionModel with _$ProductSelectionModel {
  const ProductSelectionModel._();
  const factory ProductSelectionModel({
    @Default(0) int quantity,
    @JsonKey(name: 'fk_cartid') @Default(0) int cartId,
    @JsonKey(name: 'fk_productid') @Default(0) int productId,
  }) = _ProductSelectionModel;

  factory ProductSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSelectionModelFromJson(json);
}
