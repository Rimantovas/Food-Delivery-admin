// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrients.g.dart';
part 'nutrients.freezed.dart';

@freezed
class NutrientsModel with _$NutrientsModel {
  const NutrientsModel._();
  const factory NutrientsModel({
    @Default(0) int id,
    @Default(0.0) double energy,
    @Default(0.0) double carbohydrates,
    @Default(0.0) double fat,
    @Default(0.0) double protein,
    @Default(0.0) double salt,
    @JsonKey(name: 'saturated_fat') @Default(0.0) double saturatedFat,
    @Default(0.0) double sugar,
    @JsonKey(name: 'fk_productid') @Default(0) int productId,
  }) = _NutrientsModel;

  factory NutrientsModel.fromJson(Map<String, dynamic> json) =>
      _$NutrientsModelFromJson(json);
}
