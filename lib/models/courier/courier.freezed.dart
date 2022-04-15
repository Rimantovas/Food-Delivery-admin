// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'courier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourierModel _$CourierModelFromJson(Map<String, dynamic> json) {
  return _CourierModel.fromJson(json);
}

/// @nodoc
class _$CourierModelTearOff {
  const _$CourierModelTearOff();

  _CourierModel call(
      {int id = 0,
      String name = '',
      @JsonKey(name: 'phone_number') String phoneNumber = '',
      @JsonKey(name: 'car_number_plate') String carNumberPlate = ''}) {
    return _CourierModel(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      carNumberPlate: carNumberPlate,
    );
  }

  CourierModel fromJson(Map<String, Object?> json) {
    return CourierModel.fromJson(json);
  }
}

/// @nodoc
const $CourierModel = _$CourierModelTearOff();

/// @nodoc
mixin _$CourierModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_number_plate')
  String get carNumberPlate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourierModelCopyWith<CourierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourierModelCopyWith<$Res> {
  factory $CourierModelCopyWith(
          CourierModel value, $Res Function(CourierModel) then) =
      _$CourierModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'car_number_plate') String carNumberPlate});
}

/// @nodoc
class _$CourierModelCopyWithImpl<$Res> implements $CourierModelCopyWith<$Res> {
  _$CourierModelCopyWithImpl(this._value, this._then);

  final CourierModel _value;
  // ignore: unused_field
  final $Res Function(CourierModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? carNumberPlate = freezed,
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
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      carNumberPlate: carNumberPlate == freezed
          ? _value.carNumberPlate
          : carNumberPlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourierModelCopyWith<$Res>
    implements $CourierModelCopyWith<$Res> {
  factory _$CourierModelCopyWith(
          _CourierModel value, $Res Function(_CourierModel) then) =
      __$CourierModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'car_number_plate') String carNumberPlate});
}

/// @nodoc
class __$CourierModelCopyWithImpl<$Res> extends _$CourierModelCopyWithImpl<$Res>
    implements _$CourierModelCopyWith<$Res> {
  __$CourierModelCopyWithImpl(
      _CourierModel _value, $Res Function(_CourierModel) _then)
      : super(_value, (v) => _then(v as _CourierModel));

  @override
  _CourierModel get _value => super._value as _CourierModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? carNumberPlate = freezed,
  }) {
    return _then(_CourierModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      carNumberPlate: carNumberPlate == freezed
          ? _value.carNumberPlate
          : carNumberPlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourierModel extends _CourierModel {
  const _$_CourierModel(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      @JsonKey(name: 'car_number_plate') this.carNumberPlate = ''})
      : super._();

  factory _$_CourierModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourierModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'car_number_plate')
  final String carNumberPlate;

  @override
  String toString() {
    return 'CourierModel(id: $id, name: $name, phoneNumber: $phoneNumber, carNumberPlate: $carNumberPlate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourierModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.carNumberPlate, carNumberPlate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(carNumberPlate));

  @JsonKey(ignore: true)
  @override
  _$CourierModelCopyWith<_CourierModel> get copyWith =>
      __$CourierModelCopyWithImpl<_CourierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourierModelToJson(this);
  }
}

abstract class _CourierModel extends CourierModel {
  const factory _CourierModel(
          {int id,
          String name,
          @JsonKey(name: 'phone_number') String phoneNumber,
          @JsonKey(name: 'car_number_plate') String carNumberPlate}) =
      _$_CourierModel;
  const _CourierModel._() : super._();

  factory _CourierModel.fromJson(Map<String, dynamic> json) =
      _$_CourierModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'car_number_plate')
  String get carNumberPlate;
  @override
  @JsonKey(ignore: true)
  _$CourierModelCopyWith<_CourierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
