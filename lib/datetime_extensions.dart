import 'package:flutter_dart_3/extensions.dart';

enum DateUnit { year, month, day, hour, minute, second }

extension DateTimeExtensions on DateTime {
  bool get isLeapYear => year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  int get daysInMonth => DateTime(year, month + 1, 0).day;
  int get daysInYear => isLeapYear ? 366 : 365;
  int get dayOfYear => difference(DateTime(year)).inDays + 1;
  int get weekOfYear => ((dayOfYear - weekday + 10) / 7).floor();

  DateTime get nextDay => add(const Duration(days: 1));
  DateTime get previousDay => add(const Duration(days: -1));

  DateTime get nextWeek => add(const Duration(days: 7));
  DateTime get previousWeek => add(const Duration(days: -7));

  DateTime get nextMonth => add(Duration(days: daysInMonth));
  DateTime get previousMonth => add(Duration(days: -daysInMonth));

  DateTime get nextYear => add(Duration(days: daysInYear));
  DateTime get previousYear => add(Duration(days: -daysInYear));

  DateTime operator +(int days) => add(Duration(days: days));
  DateTime operator -(int days) => add(Duration(days: -days));

  /// Tronque la date jusqu'à l'unité spécifiée.
  /// Les unités inférieures sont réinitialisées à leur valeur minimale (1 ou 0).
  DateTime truncateTo(DateUnit unit) {
    final y = year;
    final m = unit.index >= DateUnit.month.index ? month : 1;
    final d = unit.index >= DateUnit.day.index ? day : 1;
    final h = unit.index >= DateUnit.hour.index ? hour : 0;
    final min = unit.index >= DateUnit.minute.index ? minute : 0;
    final s = unit.index >= DateUnit.second.index ? second : 0;

    return isUtc
        ? DateTime.utc(y, m, d, h, min, s)
        : DateTime(y, m, d, h, min, s);
  }
}

class DateTimeUtils {
  static int _getNumberOfWeeks(int year, int month) {
    DateTime firstDayOfMonth = DateTime(year);

    int firstWeekday = firstDayOfMonth.weekday % 7;

    int daysInMonth = DateTime(year, month + 1, 0).day;

    return ((daysInMonth + firstWeekday) / 7).ceil();
  }

  static Map<int, int> Function(int args) getNumberOfWeeksByMonth =
      _getNumberOfWeeksByMonthCore.cache();
  static Map<int, int> _getNumberOfWeeksByMonthCore(int year) {
    final f = _getNumberOfWeeks.curry(year);
    return {for (int month = 0; month < 12; month++) month: f(month)};
  }
}
