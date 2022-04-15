// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'building_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildingTypeModel _$BuildingTypeModelFromJson(Map<String, dynamic> json) {
  return _BuildingTypeModel.fromJson(json);
}

/// @nodoc
class _$BuildingTypeModelTearOff {
  const _$BuildingTypeModelTearOff();

  _BuildingTypeModel call({int id = 0, String name = ''}) {
    return _BuildingTypeModel(
      id: id,
      name: name,
    );
  }

  BuildingTypeModel fromJson(Map<String, Object?> json) {
    return BuildingTypeModel.fromJson(json);
  }
}

/// @nodoc
const $BuildingTypeModel = _$BuildingTypeModelTearOff();

/// @nodoc
mixin _$BuildingTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingTypeModelCopyWith<BuildingTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingTypeModelCopyWith<$Res> {
  factory $BuildingTypeModelCopyWith(
          BuildingTypeModel value, $Res Function(BuildingTypeModel) then) =
      _$BuildingTypeModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$BuildingTypeModelCopyWithImpl<$Res>
    implements $BuildingTypeModelCopyWith<$Res> {
  _$BuildingTypeModelCopyWithImpl(this._value, this._then);

  final BuildingTypeModel _value;
  // ignore: unused_field
  final $Res Function(BuildingTypeModel) _then;

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
abstract class _$BuildingTypeModelCopyWith<$Res>
    implements $BuildingTypeModelCopyWith<$Res> {
  factory _$BuildingTypeModelCopyWith(
          _BuildingTypeModel value, $Res Function(_BuildingTypeModel) then) =
      __$BuildingTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$BuildingTypeModelCopyWithImpl<$Res>
    extends _$BuildingTypeModelCopyWithImpl<$Res>
    implements _$BuildingTypeModelCopyWith<$Res> {
  __$BuildingTypeModelCopyWithImpl(
      _BuildingTypeModel _value, $Res Function(_BuildingTypeModel) _then)
      : super(_value, (v) => _then(v as _BuildingTypeModel));

  @override
  _BuildingTypeModel get _value => super._value as _BuildingTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_BuildingTypeModel(
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
class _$_BuildingTypeModel extends _BuildingTypeModel {
  const _$_BuildingTypeModel({this.id = 0, this.name = ''}) : super._();

  factory _$_BuildingTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuildingTypeModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'BuildingTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuildingTypeModel &&
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
  _$BuildingTypeModelCopyWith<_BuildingTypeModel> get copyWith =>
      __$BuildingTypeModelCopyWithImpl<_BuildingTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildingTypeModelToJson(this);
  }
}

abstract class _BuildingTypeModel extends BuildingTypeModel {
  const factory _BuildingTypeModel({int id, String name}) =
      _$_BuildingTypeModel;
  const _BuildingTypeModel._() : super._();

  factory _BuildingTypeModel.fromJson(Map<String, dynamic> json) =
      _$_BuildingTypeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BuildingTypeModelCopyWith<_BuildingTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
