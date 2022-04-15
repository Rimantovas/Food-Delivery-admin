// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_address.g.dart';
part 'client_address.freezed.dart';

@freezed
class ClientAddressModel with _$ClientAddressModel {
  const ClientAddressModel._();
  const factory ClientAddressModel({
    @Default(0) int id,
    @JsonKey(name: 'fk_clientid') @Default(0) int clientId,
    @Default('') String city,
    @Default('') String street,
    @Default('') String comments,
    @JsonKey(name: 'full_address_name') @Default('') String fullAddressName,
    @Default(0.0) double latitude,
    @Default(0.0) double longtitude,
    @JsonKey(name: 'building_type') @Default(0) int buildingTypeId,
  }) = _ClientAddressModel;

  factory ClientAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ClientAddressModelFromJson(json);

  Map<String, dynamic> toDocument(int clientId) => toJson()
    ..remove('id')
    ..remove('fk_clientid')
    ..addAll({
      'fk_clientid': clientId,
    });
}
