// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) {
  return _ReceiptModel.fromJson(json);
}

/// @nodoc
class _$ReceiptModelTearOff {
  const _$ReceiptModelTearOff();

  _ReceiptModel call(
      {int id = 0,
      @JsonKey(name: 'fk_cartid')
          int cartId = 0,
      @JsonKey(name: 'final_price')
          double finalPrice = 0.0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated}) {
    return _ReceiptModel(
      id: id,
      cartId: cartId,
      finalPrice: finalPrice,
      dateCreated: dateCreated,
    );
  }

  ReceiptModel fromJson(Map<String, Object?> json) {
    return ReceiptModel.fromJson(json);
  }
}

/// @nodoc
const $ReceiptModel = _$ReceiptModelTearOff();

/// @nodoc
mixin _$ReceiptModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_cartid')
  int get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptModelCopyWith<ReceiptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptModelCopyWith<$Res> {
  factory $ReceiptModelCopyWith(
          ReceiptModel value, $Res Function(ReceiptModel) then) =
      _$ReceiptModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'fk_cartid')
          int cartId,
      @JsonKey(name: 'final_price')
          double finalPrice,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated});
}

/// @nodoc
class _$ReceiptModelCopyWithImpl<$Res> implements $ReceiptModelCopyWith<$Res> {
  _$ReceiptModelCopyWithImpl(this._value, this._then);

  final ReceiptModel _value;
  // ignore: unused_field
  final $Res Function(ReceiptModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cartId = freezed,
    Object? finalPrice = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: cartId == freezed
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ReceiptModelCopyWith<$Res>
    implements $ReceiptModelCopyWith<$Res> {
  factory _$ReceiptModelCopyWith(
          _ReceiptModel value, $Res Function(_ReceiptModel) then) =
      __$ReceiptModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'fk_cartid')
          int cartId,
      @JsonKey(name: 'final_price')
          double finalPrice,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated});
}

/// @nodoc
class __$ReceiptModelCopyWithImpl<$Res> extends _$ReceiptModelCopyWithImpl<$Res>
    implements _$ReceiptModelCopyWith<$Res> {
  __$ReceiptModelCopyWithImpl(
      _ReceiptModel _value, $Res Function(_ReceiptModel) _then)
      : super(_value, (v) => _then(v as _ReceiptModel));

  @override
  _ReceiptModel get _value => super._value as _ReceiptModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? cartId = freezed,
    Object? finalPrice = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_ReceiptModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: cartId == freezed
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptModel extends _ReceiptModel {
  const _$_ReceiptModel(
      {this.id = 0,
      @JsonKey(name: 'fk_cartid') this.cartId = 0,
      @JsonKey(name: 'final_price') this.finalPrice = 0.0,
      @JsonKey(name: 'date_created') @DatetimeConverter() this.dateCreated})
      : super._();

  factory _$_ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'fk_cartid')
  final int cartId;
  @override
  @JsonKey(name: 'final_price')
  final double finalPrice;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;

  @override
  String toString() {
    return 'ReceiptModel(id: $id, cartId: $cartId, finalPrice: $finalPrice, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiptModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cartId, cartId) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cartId),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(dateCreated));

  @JsonKey(ignore: true)
  @override
  _$ReceiptModelCopyWith<_ReceiptModel> get copyWith =>
      __$ReceiptModelCopyWithImpl<_ReceiptModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptModelToJson(this);
  }
}

abstract class _ReceiptModel extends ReceiptModel {
  const factory _ReceiptModel(
      {int id,
      @JsonKey(name: 'fk_cartid')
          int cartId,
      @JsonKey(name: 'final_price')
          double finalPrice,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated}) = _$_ReceiptModel;
  const _ReceiptModel._() : super._();

  factory _ReceiptModel.fromJson(Map<String, dynamic> json) =
      _$_ReceiptModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'fk_cartid')
  int get cartId;
  @override
  @JsonKey(name: 'final_price')
  double get finalPrice;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$ReceiptModelCopyWith<_ReceiptModel> get copyWith =>
      throw _privateConstructorUsedError;
}
