// ignore_for_file: avoid_print

import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('cache', () {
    test('test 1', () {
      int mult(int x) => x * 2;

      var m = mult.measure();

      expect(m(2), 4);
      expect(m(2), 4);
      expect(m(3), 6);
      expect(m(3), 6);
    });

    test('test 2', () {
      final result = 5.factorial;
      expect(result, 120);
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
