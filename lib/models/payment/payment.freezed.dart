// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
class _$PaymentModelTearOff {
  const _$PaymentModelTearOff();

  _PaymentModel call(
      {@JsonKey(name: 'date_paid') @DatetimeConverter() DateTime? datePaid,
      int id = 0,
      @JsonKey(name: 'final_price') double finalPrice = 0.0,
      @JsonKey(name: 'fk_clientid') int clientId = 0,
      @JsonKey(name: 'fk_receiptid') int receiptId = 0}) {
    return _PaymentModel(
      datePaid: datePaid,
      id: id,
      finalPrice: finalPrice,
      clientId: clientId,
      receiptId: receiptId,
    );
  }

  PaymentModel fromJson(Map<String, Object?> json) {
    return PaymentModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentModel = _$PaymentModelTearOff();

/// @nodoc
mixin _$PaymentModel {
  @JsonKey(name: 'date_paid')
  @DatetimeConverter()
  DateTime? get datePaid => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_clientid')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_receiptid')
  int get receiptId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date_paid') @DatetimeConverter() DateTime? datePaid,
      int id,
      @JsonKey(name: 'final_price') double finalPrice,
      @JsonKey(name: 'fk_clientid') int clientId,
      @JsonKey(name: 'fk_receiptid') int receiptId});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  final PaymentModel _value;
  // ignore: unused_field
  final $Res Function(PaymentModel) _then;

  @override
  $Res call({
    Object? datePaid = freezed,
    Object? id = freezed,
    Object? finalPrice = freezed,
    Object? clientId = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_value.copyWith(
      datePaid: datePaid == freezed
          ? _value.datePaid
          : datePaid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(
          _PaymentModel value, $Res Function(_PaymentModel) then) =
      __$PaymentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date_paid') @DatetimeConverter() DateTime? datePaid,
      int id,
      @JsonKey(name: 'final_price') double finalPrice,
      @JsonKey(name: 'fk_clientid') int clientId,
      @JsonKey(name: 'fk_receiptid') int receiptId});
}

/// @nodoc
class __$PaymentModelCopyWithImpl<$Res> extends _$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(
      _PaymentModel _value, $Res Function(_PaymentModel) _then)
      : super(_value, (v) => _then(v as _PaymentModel));

  @override
  _PaymentModel get _value => super._value as _PaymentModel;

  @override
  $Res call({
    Object? datePaid = freezed,
    Object? id = freezed,
    Object? finalPrice = freezed,
    Object? clientId = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_PaymentModel(
      datePaid: datePaid == freezed
          ? _value.datePaid
          : datePaid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentModel extends _PaymentModel {
  const _$_PaymentModel(
      {@JsonKey(name: 'date_paid') @DatetimeConverter() this.datePaid,
      this.id = 0,
      @JsonKey(name: 'final_price') this.finalPrice = 0.0,
      @JsonKey(name: 'fk_clientid') this.clientId = 0,
      @JsonKey(name: 'fk_receiptid') this.receiptId = 0})
      : super._();

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  @JsonKey(name: 'date_paid')
  @DatetimeConverter()
  final DateTime? datePaid;
  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'final_price')
  final double finalPrice;
  @override
  @JsonKey(name: 'fk_clientid')
  final int clientId;
  @override
  @JsonKey(name: 'fk_receiptid')
  final int receiptId;

  @override
  String toString() {
    return 'PaymentModel(datePaid: $datePaid, id: $id, finalPrice: $finalPrice, clientId: $clientId, receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            const DeepCollectionEquality().equals(other.datePaid, datePaid) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.receiptId, receiptId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(datePaid),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(receiptId));

  @JsonKey(ignore: true)
  @override
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelToJson(this);
  }
}

abstract class _PaymentModel extends PaymentModel {
  const factory _PaymentModel(
      {@JsonKey(name: 'date_paid') @DatetimeConverter() DateTime? datePaid,
      int id,
      @JsonKey(name: 'final_price') double finalPrice,
      @JsonKey(name: 'fk_clientid') int clientId,
      @JsonKey(name: 'fk_receiptid') int receiptId}) = _$_PaymentModel;
  const _PaymentModel._() : super._();

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  @JsonKey(name: 'date_paid')
  @DatetimeConverter()
  DateTime? get datePaid;
  @override
  int get id;
  @override
  @JsonKey(name: 'final_price')
  double get finalPrice;
  @override
  @JsonKey(name: 'fk_clientid')
  int get clientId;
  @override
  @JsonKey(name: 'fk_receiptid')
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
