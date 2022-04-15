// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
class _$StockModelTearOff {
  const _$StockModelTearOff();

  _StockModel call(
      {int id = 0,
      @JsonKey(name: 'quantity_in_store') int quantity = 0,
      @JsonKey(name: 'fk_storeid') int storeId = 0,
      @JsonKey(name: 'fk_productid') int productId = 0}) {
    return _StockModel(
      id: id,
      quantity: quantity,
      storeId: storeId,
      productId: productId,
    );
  }

  StockModel fromJson(Map<String, Object?> json) {
    return StockModel.fromJson(json);
  }
}

/// @nodoc
const $StockModel = _$StockModelTearOff();

/// @nodoc
mixin _$StockModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_in_store')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_storeid')
  int get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_productid')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'quantity_in_store') int quantity,
      @JsonKey(name: 'fk_storeid') int storeId,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res> implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  final StockModel _value;
  // ignore: unused_field
  final $Res Function(StockModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StockModelCopyWith<$Res> implements $StockModelCopyWith<$Res> {
  factory _$StockModelCopyWith(
          _StockModel value, $Res Function(_StockModel) then) =
      __$StockModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'quantity_in_store') int quantity,
      @JsonKey(name: 'fk_storeid') int storeId,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class __$StockModelCopyWithImpl<$Res> extends _$StockModelCopyWithImpl<$Res>
    implements _$StockModelCopyWith<$Res> {
  __$StockModelCopyWithImpl(
      _StockModel _value, $Res Function(_StockModel) _then)
      : super(_value, (v) => _then(v as _StockModel));

  @override
  _StockModel get _value => super._value as _StockModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_StockModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockModel extends _StockModel {
  const _$_StockModel(
      {this.id = 0,
      @JsonKey(name: 'quantity_in_store') this.quantity = 0,
      @JsonKey(name: 'fk_storeid') this.storeId = 0,
      @JsonKey(name: 'fk_productid') this.productId = 0})
      : super._();

  factory _$_StockModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'quantity_in_store')
  final int quantity;
  @override
  @JsonKey(name: 'fk_storeid')
  final int storeId;
  @override
  @JsonKey(name: 'fk_productid')
  final int productId;

  @override
  String toString() {
    return 'StockModel(id: $id, quantity: $quantity, storeId: $storeId, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.storeId, storeId) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(storeId),
      const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$StockModelCopyWith<_StockModel> get copyWith =>
      __$StockModelCopyWithImpl<_StockModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockModelToJson(this);
  }
}

abstract class _StockModel extends StockModel {
  const factory _StockModel(
      {int id,
      @JsonKey(name: 'quantity_in_store') int quantity,
      @JsonKey(name: 'fk_storeid') int storeId,
      @JsonKey(name: 'fk_productid') int productId}) = _$_StockModel;
  const _StockModel._() : super._();

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$_StockModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'quantity_in_store')
  int get quantity;
  @override
  @JsonKey(name: 'fk_storeid')
  int get storeId;
  @override
  @JsonKey(name: 'fk_productid')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$StockModelCopyWith<_StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}
