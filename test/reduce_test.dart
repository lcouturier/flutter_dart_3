import 'dart:math' as math;

import 'package:flutter_dart_3/extensions_iterable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('reduce', () {
    test('reduce', () {
      expect(
        [1, 2, 3].reduce((a, b) => a + b),
        equals(6),
      );
    });

    test('reduce with single element returns that element', () {
      expect(
        [42].reduce((a, b) => a + b),
        equals(42),
      );
    });

    test('reduce with math.max', () {
      expect(
        [1, 2, 3, 4].reduce(math.max),
        equals(4),
      );
    });

    test('reduce with math.min', () {
      expect(
        [1, 2, 3, 4].reduceOrDefault(0, math.min),
        equals(1),
      );
    });

    test('reduce with empty list returns default value', () {
      expect(
        <int>[].reduceOrDefault(0, (a, b) => a + b),
        equals(0),
      );
    });

    test('reduce with empty list returns default value for math.min', () {
      expect(
        <int>[].reduceOrDefault(0, math.min),
        equals(0),
      );
    });

    test('reduce with empty list returns default value for math.max', () {
      expect(
        <int>[].reduceOrDefault(19, math.max),
        equals(19),
      );
    });

    test('reduce with empty list throws error', () {
      expect(
        () => <int>[].reduce((a, b) => a + b),
        throwsA(isA<StateError>()),
      );
    });
  });
}
