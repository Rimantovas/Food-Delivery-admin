// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.g.dart';
part 'store.freezed.dart';

@freezed
class StoreModel with _$StoreModel {
  const StoreModel._();
  const factory StoreModel({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'fk_store_addressid') @Default(0) int storeAddressId,
    @JsonKey(name: 'fk_chainid') @Default(0) int chainId,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
