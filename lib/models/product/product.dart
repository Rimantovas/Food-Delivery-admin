// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_delivery/models/converters.dart';
import 'package:food_delivery/models/models.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  const factory ProductModel({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default('') String description,
    @JsonKey(name: 'unit_incrementation') @Default(0) int unitIncrementation,
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @JsonKey(name: 'price_per_incrementation')
    @Default(0.0)
        double pricePerIncrementation,
    @JsonKey(name: 'unit') @Default(0) int unitId,
    @JsonKey(name: 'type') @Default(0) int typeId,
    @JsonKey(name: 'fk_producerid') @Default(0) int producerId,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}

@freezed
class ProductVM with _$ProductVM {
  const ProductVM._();
  const factory ProductVM({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default('') String description,
    @JsonKey(name: 'unit_incrementation') @Default(0) int unitIncrementation,
    @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
    @JsonKey(name: 'price_per_incrementation')
    @Default(0.0)
        double pricePerIncrementation,
    @Default('') String unit,
    @Default('') String type,
    @Default('') String producer,
  }) = _ProductVM;

  factory ProductVM.fromJson(Map<String, dynamic> json) =>
      _$ProductVMFromJson(json);

  factory ProductVM.fromModels(ProductModel product, UnitOfMeasureModel unit,
          ProducerModel producer, ProductTypeModel type) =>
      ProductVM(
        id: product.id,
        name: product.name,
        imageUrl: product.imageUrl,
        description: product.description,
        unitIncrementation: product.unitIncrementation,
        dateCreated: product.dateCreated,
        pricePerIncrementation: product.pricePerIncrementation,
        unit: unit.name,
        type: type.name,
        producer: producer.name,
      );
}
