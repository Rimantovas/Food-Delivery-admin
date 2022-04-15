import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DatetimeConverter implements JsonConverter<DateTime?, dynamic> {
  const DatetimeConverter();

  @override
  DateTime? fromJson(dynamic date) {
    return date is DateTime ? date : null;
  }

  @override
  String? toJson(DateTime? date) => date != null
      ? DateFormat('yyyy-MM-dd').format(date)
      : DateFormat('yyyy-MM-dd').format(DateTime.now().toUtc());
}
