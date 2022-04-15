// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryStatusModel _$DeliveryStatusModelFromJson(Map<String, dynamic> json) {
  return _DeliveryStatusModel.fromJson(json);
}

/// @nodoc
class _$DeliveryStatusModelTearOff {
  const _$DeliveryStatusModelTearOff();

  _DeliveryStatusModel call({int id = 0, String name = ''}) {
    return _DeliveryStatusModel(
      id: id,
      name: name,
    );
  }

  DeliveryStatusModel fromJson(Map<String, Object?> json) {
    return DeliveryStatusModel.fromJson(json);
  }
}

/// @nodoc
const $DeliveryStatusModel = _$DeliveryStatusModelTearOff();

/// @nodoc
mixin _$DeliveryStatusModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryStatusModelCopyWith<DeliveryStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStatusModelCopyWith<$Res> {
  factory $DeliveryStatusModelCopyWith(
          DeliveryStatusModel value, $Res Function(DeliveryStatusModel) then) =
      _$DeliveryStatusModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$DeliveryStatusModelCopyWithImpl<$Res>
    implements $DeliveryStatusModelCopyWith<$Res> {
  _$DeliveryStatusModelCopyWithImpl(this._value, this._then);

  final DeliveryStatusModel _value;
  // ignore: unused_field
  final $Res Function(DeliveryStatusModel) _then;

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
abstract class _$DeliveryStatusModelCopyWith<$Res>
    implements $DeliveryStatusModelCopyWith<$Res> {
  factory _$DeliveryStatusModelCopyWith(_DeliveryStatusModel value,
          $Res Function(_DeliveryStatusModel) then) =
      __$DeliveryStatusModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$DeliveryStatusModelCopyWithImpl<$Res>
    extends _$DeliveryStatusModelCopyWithImpl<$Res>
    implements _$DeliveryStatusModelCopyWith<$Res> {
  __$DeliveryStatusModelCopyWithImpl(
      _DeliveryStatusModel _value, $Res Function(_DeliveryStatusModel) _then)
      : super(_value, (v) => _then(v as _DeliveryStatusModel));

  @override
  _DeliveryStatusModel get _value => super._value as _DeliveryStatusModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_DeliveryStatusModel(
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
class _$_DeliveryStatusModel extends _DeliveryStatusModel {
  const _$_DeliveryStatusModel({this.id = 0, this.name = ''}) : super._();

  factory _$_DeliveryStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryStatusModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'DeliveryStatusModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryStatusModel &&
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
  _$DeliveryStatusModelCopyWith<_DeliveryStatusModel> get copyWith =>
      __$DeliveryStatusModelCopyWithImpl<_DeliveryStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryStatusModelToJson(this);
  }
}

abstract class _DeliveryStatusModel extends DeliveryStatusModel {
  const factory _DeliveryStatusModel({int id, String name}) =
      _$_DeliveryStatusModel;
  const _DeliveryStatusModel._() : super._();

  factory _DeliveryStatusModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryStatusModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$DeliveryStatusModelCopyWith<_DeliveryStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
