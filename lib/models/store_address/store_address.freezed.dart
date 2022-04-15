// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAddressModel _$StoreAddressModelFromJson(Map<String, dynamic> json) {
  return _StoreAddressModel.fromJson(json);
}

/// @nodoc
class _$StoreAddressModelTearOff {
  const _$StoreAddressModelTearOff();

  _StoreAddressModel call(
      {int id = 0,
      String city = '',
      String street = '',
      @JsonKey(name: 'full_address_name') String fullAddressName = '',
      double latitude = 0.0,
      double longtitude = 0.0}) {
    return _StoreAddressModel(
      id: id,
      city: city,
      street: street,
      fullAddressName: fullAddressName,
      latitude: latitude,
      longtitude: longtitude,
    );
  }

  StoreAddressModel fromJson(Map<String, Object?> json) {
    return StoreAddressModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAddressModel = _$StoreAddressModelTearOff();

/// @nodoc
mixin _$StoreAddressModel {
  int get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address_name')
  String get fullAddressName => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longtitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAddressModelCopyWith<StoreAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAddressModelCopyWith<$Res> {
  factory $StoreAddressModelCopyWith(
          StoreAddressModel value, $Res Function(StoreAddressModel) then) =
      _$StoreAddressModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String city,
      String street,
      @JsonKey(name: 'full_address_name') String fullAddressName,
      double latitude,
      double longtitude});
}

/// @nodoc
class _$StoreAddressModelCopyWithImpl<$Res>
    implements $StoreAddressModelCopyWith<$Res> {
  _$StoreAddressModelCopyWithImpl(this._value, this._then);

  final StoreAddressModel _value;
  // ignore: unused_field
  final $Res Function(StoreAddressModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? fullAddressName = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddressName: fullAddressName == freezed
          ? _value.fullAddressName
          : fullAddressName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtitude: longtitude == freezed
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$StoreAddressModelCopyWith<$Res>
    implements $StoreAddressModelCopyWith<$Res> {
  factory _$StoreAddressModelCopyWith(
          _StoreAddressModel value, $Res Function(_StoreAddressModel) then) =
      __$StoreAddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String city,
      String street,
      @JsonKey(name: 'full_address_name') String fullAddressName,
      double latitude,
      double longtitude});
}

/// @nodoc
class __$StoreAddressModelCopyWithImpl<$Res>
    extends _$StoreAddressModelCopyWithImpl<$Res>
    implements _$StoreAddressModelCopyWith<$Res> {
  __$StoreAddressModelCopyWithImpl(
      _StoreAddressModel _value, $Res Function(_StoreAddressModel) _then)
      : super(_value, (v) => _then(v as _StoreAddressModel));

  @override
  _StoreAddressModel get _value => super._value as _StoreAddressModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? fullAddressName = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
  }) {
    return _then(_StoreAddressModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddressName: fullAddressName == freezed
          ? _value.fullAddressName
          : fullAddressName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtitude: longtitude == freezed
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreAddressModel extends _StoreAddressModel {
  const _$_StoreAddressModel(
      {this.id = 0,
      this.city = '',
      this.street = '',
      @JsonKey(name: 'full_address_name') this.fullAddressName = '',
      this.latitude = 0.0,
      this.longtitude = 0.0})
      : super._();

  factory _$_StoreAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAddressModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String city;
  @JsonKey()
  @override
  final String street;
  @override
  @JsonKey(name: 'full_address_name')
  final String fullAddressName;
  @JsonKey()
  @override
  final double latitude;
  @JsonKey()
  @override
  final double longtitude;

  @override
  String toString() {
    return 'StoreAddressModel(id: $id, city: $city, street: $street, fullAddressName: $fullAddressName, latitude: $latitude, longtitude: $longtitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreAddressModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality()
                .equals(other.fullAddressName, fullAddressName) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.longtitude, longtitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(fullAddressName),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longtitude));

  @JsonKey(ignore: true)
  @override
  _$StoreAddressModelCopyWith<_StoreAddressModel> get copyWith =>
      __$StoreAddressModelCopyWithImpl<_StoreAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAddressModelToJson(this);
  }
}

abstract class _StoreAddressModel extends StoreAddressModel {
  const factory _StoreAddressModel(
      {int id,
      String city,
      String street,
      @JsonKey(name: 'full_address_name') String fullAddressName,
      double latitude,
      double longtitude}) = _$_StoreAddressModel;
  const _StoreAddressModel._() : super._();

  factory _StoreAddressModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAddressModel.fromJson;

  @override
  int get id;
  @override
  String get city;
  @override
  String get street;
  @override
  @JsonKey(name: 'full_address_name')
  String get fullAddressName;
  @override
  double get latitude;
  @override
  double get longtitude;
  @override
  @JsonKey(ignore: true)
  _$StoreAddressModelCopyWith<_StoreAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
