// ignore_for_file: avoid_print

import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('dateTime extensions', () {
    // weekOfYear
    test('weekOfYear 1', () {
      final result = DateTime(2020, 1, 1).weekOfYear;
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
      final result = DateTime(2020, 1).daysInMonth;
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

  group('andThen', () {
    test('test 1', () {
      final f = ((x) => x + 1).andThen((x) => x * 2);
      final result = f(1);
      expect(result, 4);
    });
  });

  group('andThen', () {
    test('test 1', () {
      final f = ((x) => x + 1).andThen((x) => x * 2);
      final result = f(1);
      expect(result, 4);
    });
  });

  group('into', () {
    test('test 1', () {
      final f = 1.into((x) => x + 1).into((x) => x * 2).into((x) => x - 1);
      final result = f();
      expect(result, 3);
    });
  });

  group('separatedBy', () {
    test('test numbers', () {
      final items = 1.generate((e) => e + 1).take(5).toList();
      final result = items.separatedBy(0).toList();
      expect(result.length, 9);
    });

    test('test strings', () {
      final result = ['a', 'b', 'c'].separatedBy('x').join();
      expect(result, 'axbxc');
    });

    test('test empty', () {
      final result = [].separatedBy('x').join();
      expect(result, '');
    });

    test('test one element', () {
      final result = ['A'].separatedBy('x').join();
      expect(result, 'A');
    });
  });

  group('sum', () {
    test('test sum', () {
      final items = 1.generate((e) => e + 1).take(10).toList();
      final (num value, int duration) = items.sum;
      print('Elapsed time: $duration ms');
      expect(value, 55);
    });

    test('test sum cached', () {
      final items = 1.generate((e) => e + 1).take(10).toList();
      final (num value, int duration) = items.sum;
      print('Elapsed time: $duration ms');
      expect(value, 55);
    });

    test('test sum2', () {
      final items = 1.generate((e) => e + 1).take(10).toList();
      final result = items.sum2;
      expect(result, 55);
    });
  });
}
