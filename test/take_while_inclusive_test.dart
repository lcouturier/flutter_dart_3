import 'package:flutter_dart_3/take_while_inclusive.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('take while inclusive', () {
    test('test 1', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
          .takeWhileInclusive((e) => e < 3)
          .join(', ');
      expect(result, '1, 2, 3');
    });

    test('test 2', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
          .takeWhileInclusive((e) => e < 20)
          .join(', ');
      expect(result, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10');
    });
  });
}
