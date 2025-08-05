import 'package:intl/intl.dart';

/// Date extension
extension DateExtension on DateTime {
  /// Date without time
  String get dateWithoutTime => DateFormat('yyyy-MM-dd').format(this);

  /// Date with day name
  String get dateWithDayName => DateFormat('EEEE dd MMMM').format(this);

  /// Is same date
  bool isSameDate(DateTime other) =>
      year == other.year && month == other.month && day == other.day;
}
