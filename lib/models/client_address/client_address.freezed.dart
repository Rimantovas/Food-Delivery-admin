// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientAddressModel _$ClientAddressModelFromJson(Map<String, dynamic> json) {
  return _ClientAddressModel.fromJson(json);
}

/// @nodoc
class _$ClientAddressModelTearOff {
  const _$ClientAddressModelTearOff();

  _ClientAddressModel call(
      {int id = 0,
      @JsonKey(name: 'fk_clientid') int clientId = 0,
      String city = '',
      String street = '',
      String comments = '',
      @JsonKey(name: 'full_address_name') String fullAddressName = '',
      double latitude = 0.0,
      double longtitude = 0.0,
      @JsonKey(name: 'building_type') int buildingTypeId = 0}) {
    return _ClientAddressModel(
      id: id,
      clientId: clientId,
      city: city,
      street: street,
      comments: comments,
      fullAddressName: fullAddressName,
      latitude: latitude,
      longtitude: longtitude,
      buildingTypeId: buildingTypeId,
    );
  }

  ClientAddressModel fromJson(Map<String, Object?> json) {
    return ClientAddressModel.fromJson(json);
  }
}

/// @nodoc
const $ClientAddressModel = _$ClientAddressModelTearOff();

/// @nodoc
mixin _$ClientAddressModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_clientid')
  int get clientId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address_name')
  String get fullAddressName => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longtitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_type')
  int get buildingTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientAddressModelCopyWith<ClientAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientAddressModelCopyWith<$Res> {
  factory $ClientAddressModelCopyWith(
          ClientAddressModel value, $Res Function(ClientAddressModel) then) =
      _$ClientAddressModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'fk_clientid') int clientId,
      String city,
      String street,
      String comments,
      @JsonKey(name: 'full_address_name') String fullAddressName,
      double latitude,
      double longtitude,
      @JsonKey(name: 'building_type') int buildingTypeId});
}

/// @nodoc
class _$ClientAddressModelCopyWithImpl<$Res>
    implements $ClientAddressModelCopyWith<$Res> {
  _$ClientAddressModelCopyWithImpl(this._value, this._then);

  final ClientAddressModel _value;
  // ignore: unused_field
  final $Res Function(ClientAddressModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? comments = freezed,
    Object? fullAddressName = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
    Object? buildingTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
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
      buildingTypeId: buildingTypeId == freezed
          ? _value.buildingTypeId
          : buildingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ClientAddressModelCopyWith<$Res>
    implements $ClientAddressModelCopyWith<$Res> {
  factory _$ClientAddressModelCopyWith(
          _ClientAddressModel value, $Res Function(_ClientAddressModel) then) =
      __$ClientAddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'fk_clientid') int clientId,
      String city,
      String street,
      String comments,
      @JsonKey(name: 'full_address_name') String fullAddressName,
      double latitude,
      double longtitude,
      @JsonKey(name: 'building_type') int buildingTypeId});
}

/// @nodoc
class __$ClientAddressModelCopyWithImpl<$Res>
    extends _$ClientAddressModelCopyWithImpl<$Res>
    implements _$ClientAddressModelCopyWith<$Res> {
  __$ClientAddressModelCopyWithImpl(
      _ClientAddressModel _value, $Res Function(_ClientAddressModel) _then)
      : super(_value, (v) => _then(v as _ClientAddressModel));

  @override
  _ClientAddressModel get _value => super._value as _ClientAddressModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? comments = freezed,
    Object? fullAddressName = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
    Object? buildingTypeId = freezed,
  }) {
    return _then(_ClientAddressModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
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
      buildingTypeId: buildingTypeId == freezed
          ? _value.buildingTypeId
          : buildingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientAddressModel extends _ClientAddressModel {
  const _$_ClientAddressModel(
      {this.id = 0,
      @JsonKey(name: 'fk_clientid') this.clientId = 0,
      this.city = '',
      this.street = '',
      this.comments = '',
      @JsonKey(name: 'full_address_name') this.fullAddressName = '',
      this.latitude = 0.0,
      this.longtitude = 0.0,
      @JsonKey(name: 'building_type') this.buildingTypeId = 0})
      : super._();

  factory _$_ClientAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientAddressModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'fk_clientid')
  final int clientId;
  @JsonKey()
  @override
  final String city;
  @JsonKey()
  @override
  final String street;
  @JsonKey()
  @override
  final String comments;
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
  @JsonKey(name: 'building_type')
  final int buildingTypeId;

  @override
  String toString() {
    return 'ClientAddressModel(id: $id, clientId: $clientId, city: $city, street: $street, comments: $comments, fullAddressName: $fullAddressName, latitude: $latitude, longtitude: $longtitude, buildingTypeId: $buildingTypeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientAddressModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality()
                .equals(other.fullAddressName, fullAddressName) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.longtitude, longtitude) &&
            const DeepCollectionEquality()
                .equals(other.buildingTypeId, buildingTypeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(fullAddressName),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longtitude),
      const DeepCollectionEquality().hash(buildingTypeId));

  @JsonKey(ignore: true)
  @override
  _$ClientAddressModelCopyWith<_ClientAddressModel> get copyWith =>
      __$ClientAddressModelCopyWithImpl<_ClientAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientAddressModelToJson(this);
  }
}

abstract class _ClientAddressModel extends ClientAddressModel {
  const factory _ClientAddressModel(
          {int id,
          @JsonKey(name: 'fk_clientid') int clientId,
          String city,
          String street,
          String comments,
          @JsonKey(name: 'full_address_name') String fullAddressName,
          double latitude,
          double longtitude,
          @JsonKey(name: 'building_type') int buildingTypeId}) =
      _$_ClientAddressModel;
  const _ClientAddressModel._() : super._();

  factory _ClientAddressModel.fromJson(Map<String, dynamic> json) =
      _$_ClientAddressModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'fk_clientid')
  int get clientId;
  @override
  String get city;
  @override
  String get street;
  @override
  String get comments;
  @override
  @JsonKey(name: 'full_address_name')
  String get fullAddressName;
  @override
  double get latitude;
  @override
  double get longtitude;
  @override
  @JsonKey(name: 'building_type')
  int get buildingTypeId;
  @override
  @JsonKey(ignore: true)
  _$ClientAddressModelCopyWith<_ClientAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
