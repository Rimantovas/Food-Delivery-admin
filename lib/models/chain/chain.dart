// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';

part 'chain.g.dart';
part 'chain.freezed.dart';

@freezed
class ChainModel with _$ChainModel {
  const ChainModel._();
  const factory ChainModel({
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default('') String email,
  }) = _ChainModel;

  factory ChainModel.fromJson(Map<String, dynamic> json) =>
      _$ChainModelFromJson(json);
}
