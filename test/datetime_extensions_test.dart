import 'package:flutter_dart_3/datetime_extensions.dart';
import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('dateTime extensions', () {
    test('operator +', () {
      final result = DateTime(2020, 1, 5) + 1;
      expect(DateTime(2020, 1, 6), result);
    });

    test('operator -', () {
      final result = DateTime(2020, 1, 5) - 1;
      expect(DateTime(2020, 1, 4), result);
    });
    // weekOfYear
    test('weekOfYear 1', () {
      final result = DateTime(2020).weekOfYear;
      expect(result, 1);
    });

    test('weekOfYear 2', () {
      final result = DateTime(2020, 1, 5).weekOfYear;
      expect(result, 1);
    });

    test('weekOfYear 3', () {
      final result = DateTime(2020, 1, 6).weekOfYear;
      expect(result, 2);
    });

    test('weekOfYear 4', () {
      final result = DateTime(2020, 1, 12).weekOfYear;
      expect(result, 2);
    });
    // daysInMonth
    test('daysInMonth 1', () {
      final result = DateTime(2020).daysInMonth;
      expect(result, 31);
    });

    test('daysInMonth 2', () {
      final result = DateTime(2020, 2).daysInMonth;
      expect(result, 29);
    });

    test('daysInMonth 3', () {
      final result = DateTime(2020, 3).daysInMonth;
      expect(result, 31);
    });
    test('daysInYear 1', () {
      final result = DateTime(2020).daysInYear;
      expect(result, 366);
    });

    test('daysInYear 2', () {
      final result = DateTime(2021).daysInYear;
      expect(result, 365);
    });
    test('isLeayYear 1', () {
      final result = DateTime(2020).isLeapYear;
      expect(result, true);
    });
    test('isLeayYear 2', () {
      final result = DateTime(2021).isLeapYear;
      expect(result, false);
    });

    test('isLeayYear 3', () {
      final result = DateTime(2022).isLeapYear;
      expect(result, false);
    });

    test('isLeayYear 4', () {
      final result = DateTime(2023).isLeapYear;
      expect(result, false);
    });

    test('isLeayYear 5', () {
      final result = DateTime(2024).isLeapYear;
      expect(result, true);
    });
  });

  group('dateTime extensions', () {
    test('number of weeks measure', () {
      final f = DateTimeUtils.getNumberOfWeeksByMonth.measure();

      final result = f(2020);
      expect(result.result.length, 12);
      // ignore: avoid_print
      print(result.elapsed);

      final result2 = f(2020);
      expect(result2.result.length, 12);
      // ignore: avoid_print
      print(result2.elapsed);
    });

    test('number of weeks 2024', () {
      final items = DateTimeUtils.getNumberOfWeeksByMonth(2024);

      expect(items.length, 12);

      expect(items[0], 5);
      expect(items[1], 5);
      expect(items[2], 5);
      expect(items[3], 5);
      expect(items[4], 5);
      expect(items[5], 5);
      expect(items[6], 5);
      expect(items[7], 5);
      expect(items[8], 5);
      expect(items[9], 5);
      expect(items[10], 5);
      expect(items[11], 5);
    });

    test('number of weeks 2023', () {
      final items = DateTimeUtils.getNumberOfWeeksByMonth(2023);

      expect(items.length, 12);

      expect(items[0], 5);
      expect(items[1], 5);
      expect(items[2], 4);
      expect(items[3], 5);
      expect(items[4], 5);
      expect(items[5], 5);
      expect(items[6], 5);
      expect(items[7], 5);
      expect(items[8], 5);
      expect(items[9], 5);
      expect(items[10], 5);
      expect(items[11], 5);
    });
  });
}
