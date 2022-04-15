// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../converters.dart';

part 'client.g.dart';
part 'client.freezed.dart';

@freezed
class ClientModel with _$ClientModel {
  const ClientModel._();
  const factory ClientModel({
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @Default('') String email,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
