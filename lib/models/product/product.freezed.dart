// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {int id = 0,
      String name = '',
      @JsonKey(name: 'image_url')
          String imageUrl = '',
      String description = '',
      @JsonKey(name: 'unit_incrementation')
          int unitIncrementation = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation')
          double pricePerIncrementation = 0.0,
      @JsonKey(name: 'unit')
          int unitId = 0,
      @JsonKey(name: 'type')
          int typeId = 0,
      @JsonKey(name: 'fk_producerid')
          int producerId = 0}) {
    return _ProductModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      description: description,
      unitIncrementation: unitIncrementation,
      dateCreated: dateCreated,
      pricePerIncrementation: pricePerIncrementation,
      unitId: unitId,
      typeId: typeId,
      producerId: producerId,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_incrementation')
  int get unitIncrementation => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_incrementation')
  double get pricePerIncrementation => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  int get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_producerid')
  int get producerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      @JsonKey(name: 'unit') int unitId,
      @JsonKey(name: 'type') int typeId,
      @JsonKey(name: 'fk_producerid') int producerId});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? unitIncrementation = freezed,
    Object? dateCreated = freezed,
    Object? pricePerIncrementation = freezed,
    Object? unitId = freezed,
    Object? typeId = freezed,
    Object? producerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitIncrementation: unitIncrementation == freezed
          ? _value.unitIncrementation
          : unitIncrementation // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pricePerIncrementation: pricePerIncrementation == freezed
          ? _value.pricePerIncrementation
          : pricePerIncrementation // ignore: cast_nullable_to_non_nullable
              as double,
      unitId: unitId == freezed
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      producerId: producerId == freezed
          ? _value.producerId
          : producerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      @JsonKey(name: 'unit') int unitId,
      @JsonKey(name: 'type') int typeId,
      @JsonKey(name: 'fk_producerid') int producerId});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? unitIncrementation = freezed,
    Object? dateCreated = freezed,
    Object? pricePerIncrementation = freezed,
    Object? unitId = freezed,
    Object? typeId = freezed,
    Object? producerId = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitIncrementation: unitIncrementation == freezed
          ? _value.unitIncrementation
          : unitIncrementation // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pricePerIncrementation: pricePerIncrementation == freezed
          ? _value.pricePerIncrementation
          : pricePerIncrementation // ignore: cast_nullable_to_non_nullable
              as double,
      unitId: unitId == freezed
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      producerId: producerId == freezed
          ? _value.producerId
          : producerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'image_url')
          this.imageUrl = '',
      this.description = '',
      @JsonKey(name: 'unit_incrementation')
          this.unitIncrementation = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          this.dateCreated,
      @JsonKey(name: 'price_per_incrementation')
          this.pricePerIncrementation = 0.0,
      @JsonKey(name: 'unit')
          this.unitId = 0,
      @JsonKey(name: 'type')
          this.typeId = 0,
      @JsonKey(name: 'fk_producerid')
          this.producerId = 0})
      : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey()
  @override
  final String description;
  @override
  @JsonKey(name: 'unit_incrementation')
  final int unitIncrementation;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @override
  @JsonKey(name: 'price_per_incrementation')
  final double pricePerIncrementation;
  @override
  @JsonKey(name: 'unit')
  final int unitId;
  @override
  @JsonKey(name: 'type')
  final int typeId;
  @override
  @JsonKey(name: 'fk_producerid')
  final int producerId;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, imageUrl: $imageUrl, description: $description, unitIncrementation: $unitIncrementation, dateCreated: $dateCreated, pricePerIncrementation: $pricePerIncrementation, unitId: $unitId, typeId: $typeId, producerId: $producerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.unitIncrementation, unitIncrementation) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality()
                .equals(other.pricePerIncrementation, pricePerIncrementation) &&
            const DeepCollectionEquality().equals(other.unitId, unitId) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            const DeepCollectionEquality()
                .equals(other.producerId, producerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(unitIncrementation),
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(pricePerIncrementation),
      const DeepCollectionEquality().hash(unitId),
      const DeepCollectionEquality().hash(typeId),
      const DeepCollectionEquality().hash(producerId));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      @JsonKey(name: 'unit') int unitId,
      @JsonKey(name: 'type') int typeId,
      @JsonKey(name: 'fk_producerid') int producerId}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get description;
  @override
  @JsonKey(name: 'unit_incrementation')
  int get unitIncrementation;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  @JsonKey(name: 'price_per_incrementation')
  double get pricePerIncrementation;
  @override
  @JsonKey(name: 'unit')
  int get unitId;
  @override
  @JsonKey(name: 'type')
  int get typeId;
  @override
  @JsonKey(name: 'fk_producerid')
  int get producerId;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVM _$ProductVMFromJson(Map<String, dynamic> json) {
  return _ProductVM.fromJson(json);
}

/// @nodoc
class _$ProductVMTearOff {
  const _$ProductVMTearOff();

  _ProductVM call(
      {int id = 0,
      String name = '',
      @JsonKey(name: 'image_url')
          String imageUrl = '',
      String description = '',
      @JsonKey(name: 'unit_incrementation')
          int unitIncrementation = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation')
          double pricePerIncrementation = 0.0,
      String unit = '',
      String type = '',
      String producer = ''}) {
    return _ProductVM(
      id: id,
      name: name,
      imageUrl: imageUrl,
      description: description,
      unitIncrementation: unitIncrementation,
      dateCreated: dateCreated,
      pricePerIncrementation: pricePerIncrementation,
      unit: unit,
      type: type,
      producer: producer,
    );
  }

  ProductVM fromJson(Map<String, Object?> json) {
    return ProductVM.fromJson(json);
  }
}

/// @nodoc
const $ProductVM = _$ProductVMTearOff();

/// @nodoc
mixin _$ProductVM {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_incrementation')
  int get unitIncrementation => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_incrementation')
  double get pricePerIncrementation => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVMCopyWith<ProductVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVMCopyWith<$Res> {
  factory $ProductVMCopyWith(ProductVM value, $Res Function(ProductVM) then) =
      _$ProductVMCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      String unit,
      String type,
      String producer});
}

/// @nodoc
class _$ProductVMCopyWithImpl<$Res> implements $ProductVMCopyWith<$Res> {
  _$ProductVMCopyWithImpl(this._value, this._then);

  final ProductVM _value;
  // ignore: unused_field
  final $Res Function(ProductVM) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? unitIncrementation = freezed,
    Object? dateCreated = freezed,
    Object? pricePerIncrementation = freezed,
    Object? unit = freezed,
    Object? type = freezed,
    Object? producer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitIncrementation: unitIncrementation == freezed
          ? _value.unitIncrementation
          : unitIncrementation // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pricePerIncrementation: pricePerIncrementation == freezed
          ? _value.pricePerIncrementation
          : pricePerIncrementation // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductVMCopyWith<$Res> implements $ProductVMCopyWith<$Res> {
  factory _$ProductVMCopyWith(
          _ProductVM value, $Res Function(_ProductVM) then) =
      __$ProductVMCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      String unit,
      String type,
      String producer});
}

/// @nodoc
class __$ProductVMCopyWithImpl<$Res> extends _$ProductVMCopyWithImpl<$Res>
    implements _$ProductVMCopyWith<$Res> {
  __$ProductVMCopyWithImpl(_ProductVM _value, $Res Function(_ProductVM) _then)
      : super(_value, (v) => _then(v as _ProductVM));

  @override
  _ProductVM get _value => super._value as _ProductVM;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? unitIncrementation = freezed,
    Object? dateCreated = freezed,
    Object? pricePerIncrementation = freezed,
    Object? unit = freezed,
    Object? type = freezed,
    Object? producer = freezed,
  }) {
    return _then(_ProductVM(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitIncrementation: unitIncrementation == freezed
          ? _value.unitIncrementation
          : unitIncrementation // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pricePerIncrementation: pricePerIncrementation == freezed
          ? _value.pricePerIncrementation
          : pricePerIncrementation // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVM extends _ProductVM {
  const _$_ProductVM(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'image_url')
          this.imageUrl = '',
      this.description = '',
      @JsonKey(name: 'unit_incrementation')
          this.unitIncrementation = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          this.dateCreated,
      @JsonKey(name: 'price_per_incrementation')
          this.pricePerIncrementation = 0.0,
      this.unit = '',
      this.type = '',
      this.producer = ''})
      : super._();

  factory _$_ProductVM.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVMFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey()
  @override
  final String description;
  @override
  @JsonKey(name: 'unit_incrementation')
  final int unitIncrementation;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @override
  @JsonKey(name: 'price_per_incrementation')
  final double pricePerIncrementation;
  @JsonKey()
  @override
  final String unit;
  @JsonKey()
  @override
  final String type;
  @JsonKey()
  @override
  final String producer;

  @override
  String toString() {
    return 'ProductVM(id: $id, name: $name, imageUrl: $imageUrl, description: $description, unitIncrementation: $unitIncrementation, dateCreated: $dateCreated, pricePerIncrementation: $pricePerIncrementation, unit: $unit, type: $type, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVM &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.unitIncrementation, unitIncrementation) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality()
                .equals(other.pricePerIncrementation, pricePerIncrementation) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.producer, producer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(unitIncrementation),
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(pricePerIncrementation),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(producer));

  @JsonKey(ignore: true)
  @override
  _$ProductVMCopyWith<_ProductVM> get copyWith =>
      __$ProductVMCopyWithImpl<_ProductVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVMToJson(this);
  }
}

abstract class _ProductVM extends ProductVM {
  const factory _ProductVM(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      String description,
      @JsonKey(name: 'unit_incrementation') int unitIncrementation,
      @JsonKey(name: 'date_created') @DatetimeConverter() DateTime? dateCreated,
      @JsonKey(name: 'price_per_incrementation') double pricePerIncrementation,
      String unit,
      String type,
      String producer}) = _$_ProductVM;
  const _ProductVM._() : super._();

  factory _ProductVM.fromJson(Map<String, dynamic> json) =
      _$_ProductVM.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get description;
  @override
  @JsonKey(name: 'unit_incrementation')
  int get unitIncrementation;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  @JsonKey(name: 'price_per_incrementation')
  double get pricePerIncrementation;
  @override
  String get unit;
  @override
  String get type;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$ProductVMCopyWith<_ProductVM> get copyWith =>
      throw _privateConstructorUsedError;
}
