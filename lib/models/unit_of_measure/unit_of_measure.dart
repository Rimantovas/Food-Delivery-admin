// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_measure.g.dart';
part 'unit_of_measure.freezed.dart';

@freezed
class UnitOfMeasureModel with _$UnitOfMeasureModel {
  const UnitOfMeasureModel._();
  const factory UnitOfMeasureModel({
    @Default(0) int id,
    @Default('') String name,
  }) = _UnitOfMeasureModel;

  factory UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =>
      _$UnitOfMeasureModelFromJson(json);
}
