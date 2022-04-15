// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'producer.g.dart';
part 'producer.freezed.dart';

@freezed
class ProducerModel with _$ProducerModel {
  const ProducerModel._();
  const factory ProducerModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String city,
    @Default('') String country,
  }) = _ProducerModel;

  factory ProducerModel.fromJson(Map<String, dynamic> json) =>
      _$ProducerModelFromJson(json);
}
