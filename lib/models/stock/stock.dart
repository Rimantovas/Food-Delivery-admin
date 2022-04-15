// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.g.dart';
part 'stock.freezed.dart';

@freezed
class StockModel with _$StockModel {
  const StockModel._();
  const factory StockModel({
    @Default(0) int id,
    @JsonKey(name: 'quantity_in_store') @Default(0) int quantity,
    @JsonKey(name: 'fk_storeid') @Default(0) int storeId,
    @JsonKey(name: 'fk_productid') @Default(0) int productId,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);

  Map<String, dynamic> toDocument(int storeId) => toJson()
    ..remove('id')
    ..remove('fk_storeid')
    ..addAll({
      'fk_storeid': storeId,
    });
}
