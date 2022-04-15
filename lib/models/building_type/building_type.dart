// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_type.g.dart';
part 'building_type.freezed.dart';

@freezed
class BuildingTypeModel with _$BuildingTypeModel {
  const BuildingTypeModel._();
  const factory BuildingTypeModel({
    @Default(0) int id,
    @Default('') String name,
  }) = _BuildingTypeModel;

  factory BuildingTypeModel.fromJson(Map<String, dynamic> json) =>
      _$BuildingTypeModelFromJson(json);
}
