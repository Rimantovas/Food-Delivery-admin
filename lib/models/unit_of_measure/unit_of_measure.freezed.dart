// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_of_measure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitOfMeasureModel _$UnitOfMeasureModelFromJson(Map<String, dynamic> json) {
  return _UnitOfMeasureModel.fromJson(json);
}

/// @nodoc
class _$UnitOfMeasureModelTearOff {
  const _$UnitOfMeasureModelTearOff();

  _UnitOfMeasureModel call({int id = 0, String name = ''}) {
    return _UnitOfMeasureModel(
      id: id,
      name: name,
    );
  }

  UnitOfMeasureModel fromJson(Map<String, Object?> json) {
    return UnitOfMeasureModel.fromJson(json);
  }
}

/// @nodoc
const $UnitOfMeasureModel = _$UnitOfMeasureModelTearOff();

/// @nodoc
mixin _$UnitOfMeasureModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitOfMeasureModelCopyWith<UnitOfMeasureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfMeasureModelCopyWith<$Res> {
  factory $UnitOfMeasureModelCopyWith(
          UnitOfMeasureModel value, $Res Function(UnitOfMeasureModel) then) =
      _$UnitOfMeasureModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$UnitOfMeasureModelCopyWithImpl<$Res>
    implements $UnitOfMeasureModelCopyWith<$Res> {
  _$UnitOfMeasureModelCopyWithImpl(this._value, this._then);

  final UnitOfMeasureModel _value;
  // ignore: unused_field
  final $Res Function(UnitOfMeasureModel) _then;

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
abstract class _$UnitOfMeasureModelCopyWith<$Res>
    implements $UnitOfMeasureModelCopyWith<$Res> {
  factory _$UnitOfMeasureModelCopyWith(
          _UnitOfMeasureModel value, $Res Function(_UnitOfMeasureModel) then) =
      __$UnitOfMeasureModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$UnitOfMeasureModelCopyWithImpl<$Res>
    extends _$UnitOfMeasureModelCopyWithImpl<$Res>
    implements _$UnitOfMeasureModelCopyWith<$Res> {
  __$UnitOfMeasureModelCopyWithImpl(
      _UnitOfMeasureModel _value, $Res Function(_UnitOfMeasureModel) _then)
      : super(_value, (v) => _then(v as _UnitOfMeasureModel));

  @override
  _UnitOfMeasureModel get _value => super._value as _UnitOfMeasureModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_UnitOfMeasureModel(
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
class _$_UnitOfMeasureModel extends _UnitOfMeasureModel {
  const _$_UnitOfMeasureModel({this.id = 0, this.name = ''}) : super._();

  factory _$_UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =>
      _$$_UnitOfMeasureModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'UnitOfMeasureModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnitOfMeasureModel &&
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
  _$UnitOfMeasureModelCopyWith<_UnitOfMeasureModel> get copyWith =>
      __$UnitOfMeasureModelCopyWithImpl<_UnitOfMeasureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitOfMeasureModelToJson(this);
  }
}

abstract class _UnitOfMeasureModel extends UnitOfMeasureModel {
  const factory _UnitOfMeasureModel({int id, String name}) =
      _$_UnitOfMeasureModel;
  const _UnitOfMeasureModel._() : super._();

  factory _UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =
      _$_UnitOfMeasureModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$UnitOfMeasureModelCopyWith<_UnitOfMeasureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
