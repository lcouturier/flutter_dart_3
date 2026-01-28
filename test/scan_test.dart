// ignore_for_file: avoid_print

import 'package:flutter_dart_3/scan.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('scan', () {
    test('scan int', () {
      final result = [1, 2, 3, 4].scan(0, (x, y) => x + y).toList();
      expect(result, [1, 3, 6, 10]);
    });

    test('scan string', () {
      final result = ['a', 'b', 'c', 'd'].scan('', (x, y) => '$x$y').toList();
      expect(result, ['a', 'ab', 'abc', 'abcd']);
    });
  });
}
