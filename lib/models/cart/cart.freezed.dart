// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
class _$CartModelTearOff {
  const _$CartModelTearOff();

  _CartModel call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id = 0,
      @JsonKey(name: 'fk_clientid')
          int clientId = 0,
      @JsonKey(name: 'fk_delivery_feeid')
          int deliveryFeeId = 0,
      @JsonKey(name: 'fk_packaging_feeid')
          int packagingFeeId = 0,
      @JsonKey(name: 'fk_minimal_cart_feeid')
          int minimalCartFeeId = 0}) {
    return _CartModel(
      dateCreated: dateCreated,
      id: id,
      clientId: clientId,
      deliveryFeeId: deliveryFeeId,
      packagingFeeId: packagingFeeId,
      minimalCartFeeId: minimalCartFeeId,
    );
  }

  CartModel fromJson(Map<String, Object?> json) {
    return CartModel.fromJson(json);
  }
}

/// @nodoc
const $CartModel = _$CartModelTearOff();

/// @nodoc
mixin _$CartModel {
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_clientid')
  int get clientId => throw _privateConstructorUsedError; //1
  @JsonKey(name: 'fk_delivery_feeid')
  int get deliveryFeeId => throw _privateConstructorUsedError; //many
  @JsonKey(name: 'fk_packaging_feeid')
  int get packagingFeeId => throw _privateConstructorUsedError; //many
  @JsonKey(name: 'fk_minimal_cart_feeid')
  int get minimalCartFeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      @JsonKey(name: 'fk_clientid')
          int clientId,
      @JsonKey(name: 'fk_delivery_feeid')
          int deliveryFeeId,
      @JsonKey(name: 'fk_packaging_feeid')
          int packagingFeeId,
      @JsonKey(name: 'fk_minimal_cart_feeid')
          int minimalCartFeeId});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  final CartModel _value;
  // ignore: unused_field
  final $Res Function(CartModel) _then;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? clientId = freezed,
    Object? deliveryFeeId = freezed,
    Object? packagingFeeId = freezed,
    Object? minimalCartFeeId = freezed,
  }) {
    return _then(_value.copyWith(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFeeId: deliveryFeeId == freezed
          ? _value.deliveryFeeId
          : deliveryFeeId // ignore: cast_nullable_to_non_nullable
              as int,
      packagingFeeId: packagingFeeId == freezed
          ? _value.packagingFeeId
          : packagingFeeId // ignore: cast_nullable_to_non_nullable
              as int,
      minimalCartFeeId: minimalCartFeeId == freezed
          ? _value.minimalCartFeeId
          : minimalCartFeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(
          _CartModel value, $Res Function(_CartModel) then) =
      __$CartModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      @JsonKey(name: 'fk_clientid')
          int clientId,
      @JsonKey(name: 'fk_delivery_feeid')
          int deliveryFeeId,
      @JsonKey(name: 'fk_packaging_feeid')
          int packagingFeeId,
      @JsonKey(name: 'fk_minimal_cart_feeid')
          int minimalCartFeeId});
}

/// @nodoc
class __$CartModelCopyWithImpl<$Res> extends _$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(_CartModel _value, $Res Function(_CartModel) _then)
      : super(_value, (v) => _then(v as _CartModel));

  @override
  _CartModel get _value => super._value as _CartModel;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? clientId = freezed,
    Object? deliveryFeeId = freezed,
    Object? packagingFeeId = freezed,
    Object? minimalCartFeeId = freezed,
  }) {
    return _then(_CartModel(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFeeId: deliveryFeeId == freezed
          ? _value.deliveryFeeId
          : deliveryFeeId // ignore: cast_nullable_to_non_nullable
              as int,
      packagingFeeId: packagingFeeId == freezed
          ? _value.packagingFeeId
          : packagingFeeId // ignore: cast_nullable_to_non_nullable
              as int,
      minimalCartFeeId: minimalCartFeeId == freezed
          ? _value.minimalCartFeeId
          : minimalCartFeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel extends _CartModel {
  const _$_CartModel(
      {@JsonKey(name: 'date_created') @DatetimeConverter() this.dateCreated,
      this.id = 0,
      @JsonKey(name: 'fk_clientid') this.clientId = 0,
      @JsonKey(name: 'fk_delivery_feeid') this.deliveryFeeId = 0,
      @JsonKey(name: 'fk_packaging_feeid') this.packagingFeeId = 0,
      @JsonKey(name: 'fk_minimal_cart_feeid') this.minimalCartFeeId = 0})
      : super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'fk_clientid')
  final int clientId;
  @override //1
  @JsonKey(name: 'fk_delivery_feeid')
  final int deliveryFeeId;
  @override //many
  @JsonKey(name: 'fk_packaging_feeid')
  final int packagingFeeId;
  @override //many
  @JsonKey(name: 'fk_minimal_cart_feeid')
  final int minimalCartFeeId;

  @override
  String toString() {
    return 'CartModel(dateCreated: $dateCreated, id: $id, clientId: $clientId, deliveryFeeId: $deliveryFeeId, packagingFeeId: $packagingFeeId, minimalCartFeeId: $minimalCartFeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartModel &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality()
                .equals(other.deliveryFeeId, deliveryFeeId) &&
            const DeepCollectionEquality()
                .equals(other.packagingFeeId, packagingFeeId) &&
            const DeepCollectionEquality()
                .equals(other.minimalCartFeeId, minimalCartFeeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(deliveryFeeId),
      const DeepCollectionEquality().hash(packagingFeeId),
      const DeepCollectionEquality().hash(minimalCartFeeId));

  @JsonKey(ignore: true)
  @override
  _$CartModelCopyWith<_CartModel> get copyWith =>
      __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(this);
  }
}

abstract class _CartModel extends CartModel {
  const factory _CartModel(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      @JsonKey(name: 'fk_clientid')
          int clientId,
      @JsonKey(name: 'fk_delivery_feeid')
          int deliveryFeeId,
      @JsonKey(name: 'fk_packaging_feeid')
          int packagingFeeId,
      @JsonKey(name: 'fk_minimal_cart_feeid')
          int minimalCartFeeId}) = _$_CartModel;
  const _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  int get id;
  @override
  @JsonKey(name: 'fk_clientid')
  int get clientId;
  @override //1
  @JsonKey(name: 'fk_delivery_feeid')
  int get deliveryFeeId;
  @override //many
  @JsonKey(name: 'fk_packaging_feeid')
  int get packagingFeeId;
  @override //many
  @JsonKey(name: 'fk_minimal_cart_feeid')
  int get minimalCartFeeId;
  @override
  @JsonKey(ignore: true)
  _$CartModelCopyWith<_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
