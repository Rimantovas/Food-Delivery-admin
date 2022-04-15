// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
class _$StoreModelTearOff {
  const _$StoreModelTearOff();

  _StoreModel call(
      {int id = 0,
      String name = '',
      @JsonKey(name: 'fk_store_addressid') int storeAddressId = 0,
      @JsonKey(name: 'fk_chainid') int chainId = 0}) {
    return _StoreModel(
      id: id,
      name: name,
      storeAddressId: storeAddressId,
      chainId: chainId,
    );
  }

  StoreModel fromJson(Map<String, Object?> json) {
    return StoreModel.fromJson(json);
  }
}

/// @nodoc
const $StoreModel = _$StoreModelTearOff();

/// @nodoc
mixin _$StoreModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_store_addressid')
  int get storeAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_chainid')
  int get chainId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
          StoreModel value, $Res Function(StoreModel) then) =
      _$StoreModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'fk_store_addressid') int storeAddressId,
      @JsonKey(name: 'fk_chainid') int chainId});
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res> implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  final StoreModel _value;
  // ignore: unused_field
  final $Res Function(StoreModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? storeAddressId = freezed,
    Object? chainId = freezed,
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
      storeAddressId: storeAddressId == freezed
          ? _value.storeAddressId
          : storeAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      chainId: chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StoreModelCopyWith<$Res> implements $StoreModelCopyWith<$Res> {
  factory _$StoreModelCopyWith(
          _StoreModel value, $Res Function(_StoreModel) then) =
      __$StoreModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'fk_store_addressid') int storeAddressId,
      @JsonKey(name: 'fk_chainid') int chainId});
}

/// @nodoc
class __$StoreModelCopyWithImpl<$Res> extends _$StoreModelCopyWithImpl<$Res>
    implements _$StoreModelCopyWith<$Res> {
  __$StoreModelCopyWithImpl(
      _StoreModel _value, $Res Function(_StoreModel) _then)
      : super(_value, (v) => _then(v as _StoreModel));

  @override
  _StoreModel get _value => super._value as _StoreModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? storeAddressId = freezed,
    Object? chainId = freezed,
  }) {
    return _then(_StoreModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storeAddressId: storeAddressId == freezed
          ? _value.storeAddressId
          : storeAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      chainId: chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreModel extends _StoreModel {
  const _$_StoreModel(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'fk_store_addressid') this.storeAddressId = 0,
      @JsonKey(name: 'fk_chainid') this.chainId = 0})
      : super._();

  factory _$_StoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'fk_store_addressid')
  final int storeAddressId;
  @override
  @JsonKey(name: 'fk_chainid')
  final int chainId;

  @override
  String toString() {
    return 'StoreModel(id: $id, name: $name, storeAddressId: $storeAddressId, chainId: $chainId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.storeAddressId, storeAddressId) &&
            const DeepCollectionEquality().equals(other.chainId, chainId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(storeAddressId),
      const DeepCollectionEquality().hash(chainId));

  @JsonKey(ignore: true)
  @override
  _$StoreModelCopyWith<_StoreModel> get copyWith =>
      __$StoreModelCopyWithImpl<_StoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreModelToJson(this);
  }
}

abstract class _StoreModel extends StoreModel {
  const factory _StoreModel(
      {int id,
      String name,
      @JsonKey(name: 'fk_store_addressid') int storeAddressId,
      @JsonKey(name: 'fk_chainid') int chainId}) = _$_StoreModel;
  const _StoreModel._() : super._();

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$_StoreModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'fk_store_addressid')
  int get storeAddressId;
  @override
  @JsonKey(name: 'fk_chainid')
  int get chainId;
  @override
  @JsonKey(ignore: true)
  _$StoreModelCopyWith<_StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
