// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'minimal_cart_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinimalCartFeeModel _$MinimalCartFeeModelFromJson(Map<String, dynamic> json) {
  return _MinimalCartFeeModel.fromJson(json);
}

/// @nodoc
class _$MinimalCartFeeModelTearOff {
  const _$MinimalCartFeeModelTearOff();

  _MinimalCartFeeModel call(
      {int id = 0,
      String name = '',
      String description = '',
      double price = 0.0,
      @JsonKey(name: 'minimal_cart_fee') double minimalCartPrice = 0.0}) {
    return _MinimalCartFeeModel(
      id: id,
      name: name,
      description: description,
      price: price,
      minimalCartPrice: minimalCartPrice,
    );
  }

  MinimalCartFeeModel fromJson(Map<String, Object?> json) {
    return MinimalCartFeeModel.fromJson(json);
  }
}

/// @nodoc
const $MinimalCartFeeModel = _$MinimalCartFeeModelTearOff();

/// @nodoc
mixin _$MinimalCartFeeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_cart_fee')
  double get minimalCartPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinimalCartFeeModelCopyWith<MinimalCartFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimalCartFeeModelCopyWith<$Res> {
  factory $MinimalCartFeeModelCopyWith(
          MinimalCartFeeModel value, $Res Function(MinimalCartFeeModel) then) =
      _$MinimalCartFeeModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      @JsonKey(name: 'minimal_cart_fee') double minimalCartPrice});
}

/// @nodoc
class _$MinimalCartFeeModelCopyWithImpl<$Res>
    implements $MinimalCartFeeModelCopyWith<$Res> {
  _$MinimalCartFeeModelCopyWithImpl(this._value, this._then);

  final MinimalCartFeeModel _value;
  // ignore: unused_field
  final $Res Function(MinimalCartFeeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? minimalCartPrice = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      minimalCartPrice: minimalCartPrice == freezed
          ? _value.minimalCartPrice
          : minimalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MinimalCartFeeModelCopyWith<$Res>
    implements $MinimalCartFeeModelCopyWith<$Res> {
  factory _$MinimalCartFeeModelCopyWith(_MinimalCartFeeModel value,
          $Res Function(_MinimalCartFeeModel) then) =
      __$MinimalCartFeeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      @JsonKey(name: 'minimal_cart_fee') double minimalCartPrice});
}

/// @nodoc
class __$MinimalCartFeeModelCopyWithImpl<$Res>
    extends _$MinimalCartFeeModelCopyWithImpl<$Res>
    implements _$MinimalCartFeeModelCopyWith<$Res> {
  __$MinimalCartFeeModelCopyWithImpl(
      _MinimalCartFeeModel _value, $Res Function(_MinimalCartFeeModel) _then)
      : super(_value, (v) => _then(v as _MinimalCartFeeModel));

  @override
  _MinimalCartFeeModel get _value => super._value as _MinimalCartFeeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? minimalCartPrice = freezed,
  }) {
    return _then(_MinimalCartFeeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      minimalCartPrice: minimalCartPrice == freezed
          ? _value.minimalCartPrice
          : minimalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinimalCartFeeModel extends _MinimalCartFeeModel {
  const _$_MinimalCartFeeModel(
      {this.id = 0,
      this.name = '',
      this.description = '',
      this.price = 0.0,
      @JsonKey(name: 'minimal_cart_fee') this.minimalCartPrice = 0.0})
      : super._();

  factory _$_MinimalCartFeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinimalCartFeeModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String description;
  @JsonKey()
  @override
  final double price;
  @override
  @JsonKey(name: 'minimal_cart_fee')
  final double minimalCartPrice;

  @override
  String toString() {
    return 'MinimalCartFeeModel(id: $id, name: $name, description: $description, price: $price, minimalCartPrice: $minimalCartPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinimalCartFeeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.minimalCartPrice, minimalCartPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(minimalCartPrice));

  @JsonKey(ignore: true)
  @override
  _$MinimalCartFeeModelCopyWith<_MinimalCartFeeModel> get copyWith =>
      __$MinimalCartFeeModelCopyWithImpl<_MinimalCartFeeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinimalCartFeeModelToJson(this);
  }
}

abstract class _MinimalCartFeeModel extends MinimalCartFeeModel {
  const factory _MinimalCartFeeModel(
          {int id,
          String name,
          String description,
          double price,
          @JsonKey(name: 'minimal_cart_fee') double minimalCartPrice}) =
      _$_MinimalCartFeeModel;
  const _MinimalCartFeeModel._() : super._();

  factory _MinimalCartFeeModel.fromJson(Map<String, dynamic> json) =
      _$_MinimalCartFeeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(name: 'minimal_cart_fee')
  double get minimalCartPrice;
  @override
  @JsonKey(ignore: true)
  _$MinimalCartFeeModelCopyWith<_MinimalCartFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
