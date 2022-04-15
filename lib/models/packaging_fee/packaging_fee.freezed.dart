// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'packaging_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagingFeeModel _$PackagingFeeModelFromJson(Map<String, dynamic> json) {
  return _PackagingFeeModel.fromJson(json);
}

/// @nodoc
class _$PackagingFeeModelTearOff {
  const _$PackagingFeeModelTearOff();

  _PackagingFeeModel call(
      {int id = 0,
      String name = '',
      String description = '',
      double price = 0.0}) {
    return _PackagingFeeModel(
      id: id,
      name: name,
      description: description,
      price: price,
    );
  }

  PackagingFeeModel fromJson(Map<String, Object?> json) {
    return PackagingFeeModel.fromJson(json);
  }
}

/// @nodoc
const $PackagingFeeModel = _$PackagingFeeModelTearOff();

/// @nodoc
mixin _$PackagingFeeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagingFeeModelCopyWith<PackagingFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagingFeeModelCopyWith<$Res> {
  factory $PackagingFeeModelCopyWith(
          PackagingFeeModel value, $Res Function(PackagingFeeModel) then) =
      _$PackagingFeeModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String description, double price});
}

/// @nodoc
class _$PackagingFeeModelCopyWithImpl<$Res>
    implements $PackagingFeeModelCopyWith<$Res> {
  _$PackagingFeeModelCopyWithImpl(this._value, this._then);

  final PackagingFeeModel _value;
  // ignore: unused_field
  final $Res Function(PackagingFeeModel) _then;

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
abstract class _$PackagingFeeModelCopyWith<$Res>
    implements $PackagingFeeModelCopyWith<$Res> {
  factory _$PackagingFeeModelCopyWith(
          _PackagingFeeModel value, $Res Function(_PackagingFeeModel) then) =
      __$PackagingFeeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String description, double price});
}

/// @nodoc
class __$PackagingFeeModelCopyWithImpl<$Res>
    extends _$PackagingFeeModelCopyWithImpl<$Res>
    implements _$PackagingFeeModelCopyWith<$Res> {
  __$PackagingFeeModelCopyWithImpl(
      _PackagingFeeModel _value, $Res Function(_PackagingFeeModel) _then)
      : super(_value, (v) => _then(v as _PackagingFeeModel));

  @override
  _PackagingFeeModel get _value => super._value as _PackagingFeeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
  }) {
    return _then(_PackagingFeeModel(
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
class _$_PackagingFeeModel extends _PackagingFeeModel {
  const _$_PackagingFeeModel(
      {this.id = 0, this.name = '', this.description = '', this.price = 0.0})
      : super._();

  factory _$_PackagingFeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackagingFeeModelFromJson(json);

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
    return 'PackagingFeeModel(id: $id, name: $name, description: $description, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagingFeeModel &&
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
  _$PackagingFeeModelCopyWith<_PackagingFeeModel> get copyWith =>
      __$PackagingFeeModelCopyWithImpl<_PackagingFeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagingFeeModelToJson(this);
  }
}

abstract class _PackagingFeeModel extends PackagingFeeModel {
  const factory _PackagingFeeModel(
      {int id,
      String name,
      String description,
      double price}) = _$_PackagingFeeModel;
  const _PackagingFeeModel._() : super._();

  factory _PackagingFeeModel.fromJson(Map<String, dynamic> json) =
      _$_PackagingFeeModel.fromJson;

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
  _$PackagingFeeModelCopyWith<_PackagingFeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
