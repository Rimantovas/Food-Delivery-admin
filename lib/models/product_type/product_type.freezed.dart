// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductTypeModel _$ProductTypeModelFromJson(Map<String, dynamic> json) {
  return _ProductTypeModel.fromJson(json);
}

/// @nodoc
class _$ProductTypeModelTearOff {
  const _$ProductTypeModelTearOff();

  _ProductTypeModel call({int id = 0, String name = ''}) {
    return _ProductTypeModel(
      id: id,
      name: name,
    );
  }

  ProductTypeModel fromJson(Map<String, Object?> json) {
    return ProductTypeModel.fromJson(json);
  }
}

/// @nodoc
const $ProductTypeModel = _$ProductTypeModelTearOff();

/// @nodoc
mixin _$ProductTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTypeModelCopyWith<ProductTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeModelCopyWith<$Res> {
  factory $ProductTypeModelCopyWith(
          ProductTypeModel value, $Res Function(ProductTypeModel) then) =
      _$ProductTypeModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ProductTypeModelCopyWithImpl<$Res>
    implements $ProductTypeModelCopyWith<$Res> {
  _$ProductTypeModelCopyWithImpl(this._value, this._then);

  final ProductTypeModel _value;
  // ignore: unused_field
  final $Res Function(ProductTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ProductTypeModelCopyWith<$Res>
    implements $ProductTypeModelCopyWith<$Res> {
  factory _$ProductTypeModelCopyWith(
          _ProductTypeModel value, $Res Function(_ProductTypeModel) then) =
      __$ProductTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$ProductTypeModelCopyWithImpl<$Res>
    extends _$ProductTypeModelCopyWithImpl<$Res>
    implements _$ProductTypeModelCopyWith<$Res> {
  __$ProductTypeModelCopyWithImpl(
      _ProductTypeModel _value, $Res Function(_ProductTypeModel) _then)
      : super(_value, (v) => _then(v as _ProductTypeModel));

  @override
  _ProductTypeModel get _value => super._value as _ProductTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ProductTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductTypeModel extends _ProductTypeModel {
  const _$_ProductTypeModel({this.id = 0, this.name = ''}) : super._();

  factory _$_ProductTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTypeModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'ProductTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductTypeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$ProductTypeModelCopyWith<_ProductTypeModel> get copyWith =>
      __$ProductTypeModelCopyWithImpl<_ProductTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTypeModelToJson(this);
  }
}

abstract class _ProductTypeModel extends ProductTypeModel {
  const factory _ProductTypeModel({int id, String name}) = _$_ProductTypeModel;
  const _ProductTypeModel._() : super._();

  factory _ProductTypeModel.fromJson(Map<String, dynamic> json) =
      _$_ProductTypeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ProductTypeModelCopyWith<_ProductTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
