// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return _ClientModel.fromJson(json);
}

/// @nodoc
class _$ClientModelTearOff {
  const _$ClientModelTearOff();

  _ClientModel call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id = 0,
      String name = '',
      @JsonKey(name: 'phone_number')
          String phoneNumber = '',
      String email = ''}) {
    return _ClientModel(
      dateCreated: dateCreated,
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      email: email,
    );
  }

  ClientModel fromJson(Map<String, Object?> json) {
    return ClientModel.fromJson(json);
  }
}

/// @nodoc
const $ClientModel = _$ClientModelTearOff();

/// @nodoc
mixin _$ClientModel {
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'phone_number')
          String phoneNumber,
      String email});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res> implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  final ClientModel _value;
  // ignore: unused_field
  final $Res Function(ClientModel) _then;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClientModelCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$ClientModelCopyWith(
          _ClientModel value, $Res Function(_ClientModel) then) =
      __$ClientModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'phone_number')
          String phoneNumber,
      String email});
}

/// @nodoc
class __$ClientModelCopyWithImpl<$Res> extends _$ClientModelCopyWithImpl<$Res>
    implements _$ClientModelCopyWith<$Res> {
  __$ClientModelCopyWithImpl(
      _ClientModel _value, $Res Function(_ClientModel) _then)
      : super(_value, (v) => _then(v as _ClientModel));

  @override
  _ClientModel get _value => super._value as _ClientModel;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_ClientModel(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientModel extends _ClientModel {
  const _$_ClientModel(
      {@JsonKey(name: 'date_created') @DatetimeConverter() this.dateCreated,
      this.id = 0,
      this.name = '',
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      this.email = ''})
      : super._();

  factory _$_ClientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientModelFromJson(json);

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey()
  @override
  final String email;

  @override
  String toString() {
    return 'ClientModel(dateCreated: $dateCreated, id: $id, name: $name, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientModel &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ClientModelCopyWith<_ClientModel> get copyWith =>
      __$ClientModelCopyWithImpl<_ClientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientModelToJson(this);
  }
}

abstract class _ClientModel extends ClientModel {
  const factory _ClientModel(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'phone_number')
          String phoneNumber,
      String email}) = _$_ClientModel;
  const _ClientModel._() : super._();

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$_ClientModel.fromJson;

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$ClientModelCopyWith<_ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
