// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      datePaid: const DatetimeConverter().fromJson(json['date_paid']),
      id: json['id'] as int? ?? 0,
      finalPrice: (json['final_price'] as num?)?.toDouble() ?? 0.0,
      clientId: json['fk_clientid'] as int? ?? 0,
      receiptId: json['fk_receiptid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'date_paid': const DatetimeConverter().toJson(instance.datePaid),
      'id': instance.id,
      'final_price': instance.finalPrice,
      'fk_clientid': instance.clientId,
      'fk_receiptid': instance.receiptId,
    };
