// ignore_for_file: avoid_print

import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_dart_3/extensions_iterable.dart';
import 'package:flutter_dart_3/extensions_string.dart';
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

  group('iterable split', () {
    test('test 1', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(3);
      expect(result.length, 3);
      expect(result, [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]);
    });

    test('test 2', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(4);
      expect(result.length, 3);
      expect(result, [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9]
      ]);
    });

    test('test 3', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(5);
      expect(result.length, 2);
      expect(result, [
        [1, 2, 3, 4, 5],
        [6, 7, 8, 9]
      ]);
    });

    test('test 4', () sync* {
      final iterable = [1, 2, 3, 4];
      expect(iterable.split(-1), throwsAssertionError);
    });

    test('test 5', () sync* {
      final iterable = [1, 2, 3, 4];
      expect(iterable.split(0), throwsAssertionError);
    });

    test('test 6', () {
      final result = [1, 2, 3, 4].split(4);
      expect(result.length, 1);
      expect(result, [
        [1, 2, 3, 4],
      ]);
    });
  });

  group('removeDigits', () {
    test('test 1', () {
      final result = 'abc123'.removeDigits();
      expect(result, 'abc');
    });

    test('test 2', () {
      final result = 'abc'.removeDigits();
      expect(result, 'abc');
    });

    test('test 3', () {
      final result = '123'.removeDigits();
      expect(result, '');
    });

    test('test 4', () {
      final result = ''.removeDigits();
      expect(result, '');
    });
  });

  group('left', () {
    test('test 1', () {
      final result = 'abc123'.left(3);
      expect(result, 'abc');
    });

    test('test 2', () {
      final result = ''.left(3);
      expect(result, '');
    });

    test('test 3', () {
      final result = 'abc123'.left(0);
      expect(result, 'abc123');
    });

    test('test 4', () sync* {
      expect('abc123'.left(-1), throwsAssertionError);
    });
  });

  group('right', () {
    test('test 1', () {
      final result = 'abc123'.right(3);
      expect(result, '123');
    });

    test('test 2', () {
      final result = ''.right(3);
      expect(result, '');
    });

    test('test 3', () {
      final result = 'abc123'.right(0);
      expect(result, 'abc123');
    });

    test('test 4', () sync* {
      expect('abc123'.right(-1), throwsAssertionError);
    });
  });

  group('indexed', () {
    test('test 1', () {
      final result = [1, 2, 3].indexed.toList();
      expect(result, [
        (index: 0, element: 1),
        (index: 1, element: 2),
        (index: 2, element: 3),
      ]);
    });

    test('test 2', () {
      final result = [].indexed.toList();
      expect(result, []);
    });
  });

  group('selectMany', () {
    var users = [
      User(name: "Reza", roles: ["Superadmin"]),
      User(name: "Amin", roles: ["Guest", "Reseption"]),
      User(name: "Nima", roles: ["Nurse", "Guest"]),
    ];

    test('test 1', () {
      final result = users.selectMany((user) => user.roles, (user, role) => (user.name, role));
      expect(result, [
        ('Reza', 'Superadmin'),
        ('Amin', 'Guest'),
        ('Amin', 'Reseption'),
        ('Nima', 'Nurse'),
        ('Nima', 'Guest'),
      ]);
    });
  });
}

class User {
  final String name;
  final List<String> roles;
  User({required this.name, required this.roles});
}
