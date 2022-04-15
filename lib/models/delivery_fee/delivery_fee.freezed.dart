// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryFeeModel _$DeliveryFeeModelFromJson(Map<String, dynamic> json) {
  return _DeliveryFeeModel.fromJson(json);
}

/// @nodoc
class _$DeliveryFeeModelTearOff {
  const _$DeliveryFeeModelTearOff();

  _DeliveryFeeModel call(
      {int id = 0,
      String name = '',
      String description = '',
      double price = 0.0}) {
    return _DeliveryFeeModel(
      id: id,
      name: name,
      description: description,
      price: price,
    );
  }

  DeliveryFeeModel fromJson(Map<String, Object?> json) {
    return DeliveryFeeModel.fromJson(json);
  }
}

/// @nodoc
const $DeliveryFeeModel = _$DeliveryFeeModelTearOff();

/// @nodoc
mixin _$DeliveryFeeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryFeeModelCopyWith<DeliveryFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryFeeModelCopyWith<$Res> {
  factory $DeliveryFeeModelCopyWith(
          DeliveryFeeModel value, $Res Function(DeliveryFeeModel) then) =
      _$DeliveryFeeModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String description, double price});
}

/// @nodoc
class _$DeliveryFeeModelCopyWithImpl<$Res>
    implements $DeliveryFeeModelCopyWith<$Res> {
  _$DeliveryFeeModelCopyWithImpl(this._value, this._then);

  final DeliveryFeeModel _value;
  // ignore: unused_field
  final $Res Function(DeliveryFeeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$DeliveryFeeModelCopyWith<$Res>
    implements $DeliveryFeeModelCopyWith<$Res> {
  factory _$DeliveryFeeModelCopyWith(
          _DeliveryFeeModel value, $Res Function(_DeliveryFeeModel) then) =
      __$DeliveryFeeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String description, double price});
}

/// @nodoc
class __$DeliveryFeeModelCopyWithImpl<$Res>
    extends _$DeliveryFeeModelCopyWithImpl<$Res>
    implements _$DeliveryFeeModelCopyWith<$Res> {
  __$DeliveryFeeModelCopyWithImpl(
      _DeliveryFeeModel _value, $Res Function(_DeliveryFeeModel) _then)
      : super(_value, (v) => _then(v as _DeliveryFeeModel));

  @override
  _DeliveryFeeModel get _value => super._value as _DeliveryFeeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
  }) {
    return _then(_DeliveryFeeModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryFeeModel extends _DeliveryFeeModel {
  const _$_DeliveryFeeModel(
      {this.id = 0, this.name = '', this.description = '', this.price = 0.0})
      : super._();

  factory _$_DeliveryFeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFeeModelFromJson(json);

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
  String toString() {
    return 'DeliveryFeeModel(id: $id, name: $name, description: $description, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryFeeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$DeliveryFeeModelCopyWith<_DeliveryFeeModel> get copyWith =>
      __$DeliveryFeeModelCopyWithImpl<_DeliveryFeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryFeeModelToJson(this);
  }
}

abstract class _DeliveryFeeModel extends DeliveryFeeModel {
  const factory _DeliveryFeeModel(
      {int id,
      String name,
      String description,
      double price}) = _$_DeliveryFeeModel;
  const _DeliveryFeeModel._() : super._();

  factory _DeliveryFeeModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryFeeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$DeliveryFeeModelCopyWith<_DeliveryFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
