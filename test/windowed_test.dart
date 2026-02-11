import 'package:flutter_dart_3/windowed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('windowed', () {
    test('windowed', () {
      final result = [1, 2, 3, 4, 5].windowed(2).toList();
      expect(result.length, 4);
      expect(result, [
        [1, 2],
        [2, 3],
        [3, 4],
        [4, 5],
      ]);
    });

    test('windowed 2', () {
      final result = [1, 2, 3, 4, 5].windowed(3).toList();
      expect(result.length, 3);
      expect(result, [
        [1, 2, 3],
        [2, 3, 4],
        [3, 4, 5],
      ]);
    });

    test('windowed 3', () {
      final result = ['a', 'b', 'c', 'd', 'e'].windowed(3).toList();
      expect(result.length, 3);
      expect(result, [
        ['a', 'b', 'c'],
        ['b', 'c', 'd'],
        ['c', 'd', 'e'],
      ]);
    });
  });
}
