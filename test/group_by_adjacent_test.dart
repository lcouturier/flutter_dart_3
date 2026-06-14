import 'package:flutter_dart_3/group_by_adjacent.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('groupByAdjacent', () {
    test('groups adjacent elements based on a predicate', () {
      final list = [1, 1, 2, 2, 3, 1, 1];
      final result = list.groupByAdjacent((a, b) => a == b);
      expect(result, [
        [1, 1],
        [2, 2],
        [3],
        [1, 1]
      ]);
    });

    test('returns empty list for empty input', () {
      final list = <int>[];
      final result = list.groupByAdjacent((a, b) => a == b);
      expect(result, []);
    });

    test('handles single element list', () {
      final list = [42];
      final result = list.groupByAdjacent((a, b) => a == b);
      expect(result, [
        [42]
      ]);
    });

    test('groups based on custom predicate', () {
      final list = ['apple', 'apricot', 'banana', 'blueberry', 'cherry'];
      final result = list.groupByAdjacent((a, b) => a[0] == b[0]);
      expect(result, [
        ['apple', 'apricot'],
        ['banana', 'blueberry'],
        ['cherry']
      ]);
    });
  });
}
