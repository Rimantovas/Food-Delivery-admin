// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
class _$OrderModelTearOff {
  const _$OrderModelTearOff();

  _OrderModel call(
      {int id = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'planned_delivery_date')
      @DatetimeConverter()
          DateTime? plannedDeliveryDate,
      @JsonKey(name: 'delivery_status')
          int deliveryStatusId = 0,
      @JsonKey(name: 'fk_client_addressid')
          int clientAddressId = 0,
      @JsonKey(name: 'fk_courierid')
          int courierId = 0,
      @JsonKey(name: 'fk_store_addressid')
          int storeAddressId = 0,
      @JsonKey(name: 'fk_receiptId')
          int receiptId = 0}) {
    return _OrderModel(
      id: id,
      dateCreated: dateCreated,
      plannedDeliveryDate: plannedDeliveryDate,
      deliveryStatusId: deliveryStatusId,
      clientAddressId: clientAddressId,
      courierId: courierId,
      storeAddressId: storeAddressId,
      receiptId: receiptId,
    );
  }

  OrderModel fromJson(Map<String, Object?> json) {
    return OrderModel.fromJson(json);
  }
}

/// @nodoc
const $OrderModel = _$OrderModelTearOff();

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'planned_delivery_date')
  @DatetimeConverter()
  DateTime? get plannedDeliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  int get deliveryStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_client_addressid')
  int get clientAddressId => throw _privateConstructorUsedError; //Adreso name
  @JsonKey(name: 'fk_courierid')
  int get courierId => throw _privateConstructorUsedError; //Kurjerio vardas
  @JsonKey(name: 'fk_store_addressid')
  int get storeAddressId =>
      throw _privateConstructorUsedError; //Parduotuves pavadinimas
  @JsonKey(name: 'fk_receiptId')
  int get receiptId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'planned_delivery_date')
      @DatetimeConverter()
          DateTime? plannedDeliveryDate,
      @JsonKey(name: 'delivery_status')
          int deliveryStatusId,
      @JsonKey(name: 'fk_client_addressid')
          int clientAddressId,
      @JsonKey(name: 'fk_courierid')
          int courierId,
      @JsonKey(name: 'fk_store_addressid')
          int storeAddressId,
      @JsonKey(name: 'fk_receiptId')
          int receiptId});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? plannedDeliveryDate = freezed,
    Object? deliveryStatusId = freezed,
    Object? clientAddressId = freezed,
    Object? courierId = freezed,
    Object? storeAddressId = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedDeliveryDate: plannedDeliveryDate == freezed
          ? _value.plannedDeliveryDate
          : plannedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryStatusId: deliveryStatusId == freezed
          ? _value.deliveryStatusId
          : deliveryStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      clientAddressId: clientAddressId == freezed
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      courierId: courierId == freezed
          ? _value.courierId
          : courierId // ignore: cast_nullable_to_non_nullable
              as int,
      storeAddressId: storeAddressId == freezed
          ? _value.storeAddressId
          : storeAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) then) =
      __$OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'planned_delivery_date')
      @DatetimeConverter()
          DateTime? plannedDeliveryDate,
      @JsonKey(name: 'delivery_status')
          int deliveryStatusId,
      @JsonKey(name: 'fk_client_addressid')
          int clientAddressId,
      @JsonKey(name: 'fk_courierid')
          int courierId,
      @JsonKey(name: 'fk_store_addressid')
          int storeAddressId,
      @JsonKey(name: 'fk_receiptId')
          int receiptId});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(
      _OrderModel _value, $Res Function(_OrderModel) _then)
      : super(_value, (v) => _then(v as _OrderModel));

  @override
  _OrderModel get _value => super._value as _OrderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? plannedDeliveryDate = freezed,
    Object? deliveryStatusId = freezed,
    Object? clientAddressId = freezed,
    Object? courierId = freezed,
    Object? storeAddressId = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_OrderModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedDeliveryDate: plannedDeliveryDate == freezed
          ? _value.plannedDeliveryDate
          : plannedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryStatusId: deliveryStatusId == freezed
          ? _value.deliveryStatusId
          : deliveryStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      clientAddressId: clientAddressId == freezed
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      courierId: courierId == freezed
          ? _value.courierId
          : courierId // ignore: cast_nullable_to_non_nullable
              as int,
      storeAddressId: storeAddressId == freezed
          ? _value.storeAddressId
          : storeAddressId // ignore: cast_nullable_to_non_nullable
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
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {this.id = 0,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          this.dateCreated,
      @JsonKey(name: 'planned_delivery_date')
      @DatetimeConverter()
          this.plannedDeliveryDate,
      @JsonKey(name: 'delivery_status')
          this.deliveryStatusId = 0,
      @JsonKey(name: 'fk_client_addressid')
          this.clientAddressId = 0,
      @JsonKey(name: 'fk_courierid')
          this.courierId = 0,
      @JsonKey(name: 'fk_store_addressid')
          this.storeAddressId = 0,
      @JsonKey(name: 'fk_receiptId')
          this.receiptId = 0})
      : super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @override
  @JsonKey(name: 'planned_delivery_date')
  @DatetimeConverter()
  final DateTime? plannedDeliveryDate;
  @override
  @JsonKey(name: 'delivery_status')
  final int deliveryStatusId;
  @override
  @JsonKey(name: 'fk_client_addressid')
  final int clientAddressId;
  @override //Adreso name
  @JsonKey(name: 'fk_courierid')
  final int courierId;
  @override //Kurjerio vardas
  @JsonKey(name: 'fk_store_addressid')
  final int storeAddressId;
  @override //Parduotuves pavadinimas
  @JsonKey(name: 'fk_receiptId')
  final int receiptId;

  @override
  String toString() {
    return 'OrderModel(id: $id, dateCreated: $dateCreated, plannedDeliveryDate: $plannedDeliveryDate, deliveryStatusId: $deliveryStatusId, clientAddressId: $clientAddressId, courierId: $courierId, storeAddressId: $storeAddressId, receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality()
                .equals(other.plannedDeliveryDate, plannedDeliveryDate) &&
            const DeepCollectionEquality()
                .equals(other.deliveryStatusId, deliveryStatusId) &&
            const DeepCollectionEquality()
                .equals(other.clientAddressId, clientAddressId) &&
            const DeepCollectionEquality().equals(other.courierId, courierId) &&
            const DeepCollectionEquality()
                .equals(other.storeAddressId, storeAddressId) &&
            const DeepCollectionEquality().equals(other.receiptId, receiptId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(plannedDeliveryDate),
      const DeepCollectionEquality().hash(deliveryStatusId),
      const DeepCollectionEquality().hash(clientAddressId),
      const DeepCollectionEquality().hash(courierId),
      const DeepCollectionEquality().hash(storeAddressId),
      const DeepCollectionEquality().hash(receiptId));

  @JsonKey(ignore: true)
  @override
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {int id,
      @JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      @JsonKey(name: 'planned_delivery_date')
      @DatetimeConverter()
          DateTime? plannedDeliveryDate,
      @JsonKey(name: 'delivery_status')
          int deliveryStatusId,
      @JsonKey(name: 'fk_client_addressid')
          int clientAddressId,
      @JsonKey(name: 'fk_courierid')
          int courierId,
      @JsonKey(name: 'fk_store_addressid')
          int storeAddressId,
      @JsonKey(name: 'fk_receiptId')
          int receiptId}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  @JsonKey(name: 'planned_delivery_date')
  @DatetimeConverter()
  DateTime? get plannedDeliveryDate;
  @override
  @JsonKey(name: 'delivery_status')
  int get deliveryStatusId;
  @override
  @JsonKey(name: 'fk_client_addressid')
  int get clientAddressId;
  @override //Adreso name
  @JsonKey(name: 'fk_courierid')
  int get courierId;
  @override //Kurjerio vardas
  @JsonKey(name: 'fk_store_addressid')
  int get storeAddressId;
  @override //Parduotuves pavadinimas
  @JsonKey(name: 'fk_receiptId')
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
