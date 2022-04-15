// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSelectionModel _$ProductSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _ProductSelectionModel.fromJson(json);
}

/// @nodoc
class _$ProductSelectionModelTearOff {
  const _$ProductSelectionModelTearOff();

  _ProductSelectionModel call(
      {int quantity = 0,
      @JsonKey(name: 'fk_cartid') int cartId = 0,
      @JsonKey(name: 'fk_productid') int productId = 0}) {
    return _ProductSelectionModel(
      quantity: quantity,
      cartId: cartId,
      productId: productId,
    );
  }

  ProductSelectionModel fromJson(Map<String, Object?> json) {
    return ProductSelectionModel.fromJson(json);
  }
}

/// @nodoc
const $ProductSelectionModel = _$ProductSelectionModelTearOff();

/// @nodoc
mixin _$ProductSelectionModel {
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_cartid')
  int get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_productid')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSelectionModelCopyWith<ProductSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSelectionModelCopyWith<$Res> {
  factory $ProductSelectionModelCopyWith(ProductSelectionModel value,
          $Res Function(ProductSelectionModel) then) =
      _$ProductSelectionModelCopyWithImpl<$Res>;
  $Res call(
      {int quantity,
      @JsonKey(name: 'fk_cartid') int cartId,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class _$ProductSelectionModelCopyWithImpl<$Res>
    implements $ProductSelectionModelCopyWith<$Res> {
  _$ProductSelectionModelCopyWithImpl(this._value, this._then);

  final ProductSelectionModel _value;
  // ignore: unused_field
  final $Res Function(ProductSelectionModel) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? cartId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: cartId == freezed
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductSelectionModelCopyWith<$Res>
    implements $ProductSelectionModelCopyWith<$Res> {
  factory _$ProductSelectionModelCopyWith(_ProductSelectionModel value,
          $Res Function(_ProductSelectionModel) then) =
      __$ProductSelectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int quantity,
      @JsonKey(name: 'fk_cartid') int cartId,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class __$ProductSelectionModelCopyWithImpl<$Res>
    extends _$ProductSelectionModelCopyWithImpl<$Res>
    implements _$ProductSelectionModelCopyWith<$Res> {
  __$ProductSelectionModelCopyWithImpl(_ProductSelectionModel _value,
      $Res Function(_ProductSelectionModel) _then)
      : super(_value, (v) => _then(v as _ProductSelectionModel));

  @override
  _ProductSelectionModel get _value => super._value as _ProductSelectionModel;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? cartId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_ProductSelectionModel(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: cartId == freezed
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
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
class _$_ProductSelectionModel extends _ProductSelectionModel {
  const _$_ProductSelectionModel(
      {this.quantity = 0,
      @JsonKey(name: 'fk_cartid') this.cartId = 0,
      @JsonKey(name: 'fk_productid') this.productId = 0})
      : super._();

  factory _$_ProductSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductSelectionModelFromJson(json);

  @JsonKey()
  @override
  final int quantity;
  @override
  @JsonKey(name: 'fk_cartid')
  final int cartId;
  @override
  @JsonKey(name: 'fk_productid')
  final int productId;

  @override
  String toString() {
    return 'ProductSelectionModel(quantity: $quantity, cartId: $cartId, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSelectionModel &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.cartId, cartId) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(cartId),
      const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$ProductSelectionModelCopyWith<_ProductSelectionModel> get copyWith =>
      __$ProductSelectionModelCopyWithImpl<_ProductSelectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductSelectionModelToJson(this);
  }
}

abstract class _ProductSelectionModel extends ProductSelectionModel {
  const factory _ProductSelectionModel(
      {int quantity,
      @JsonKey(name: 'fk_cartid') int cartId,
      @JsonKey(name: 'fk_productid') int productId}) = _$_ProductSelectionModel;
  const _ProductSelectionModel._() : super._();

  factory _ProductSelectionModel.fromJson(Map<String, dynamic> json) =
      _$_ProductSelectionModel.fromJson;

  @override
  int get quantity;
  @override
  @JsonKey(name: 'fk_cartid')
  int get cartId;
  @override
  @JsonKey(name: 'fk_productid')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$ProductSelectionModelCopyWith<_ProductSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
