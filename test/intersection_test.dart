import 'package:flutter_dart_3/intersection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('intersection', () {
    test('intersection 1', () {
      final list1 = [1, 2, 3, 4, 5];
      final list2 = [3, 4, 5, 6, 7];
      final result = list1.intersection(list2).toList();
      expect(result, [3, 4, 5]);
    });

    test('intersection 2', () {
      final list1 = [1, 2, 3, 4, 5, 3, 4, 5];
      final list2 = [3, 4, 5, 6, 7];
      final result = list1.intersection(list2).toList();
      expect(result, [3, 4, 5]);
    });

    test('intersection 2 distinct false', () {
      final list1 = [1, 2, 3, 4, 5, 3, 4, 5];
      final list2 = [3, 4, 5, 6, 7];
      final result = list1.intersection(list2, distinct: false).toList();
      expect(result, [3, 4, 5, 3, 4, 5]);
    });

    test('intersection 3', () {
      final list1 = [1, 2, 3, 4, 5, 3, 4, 5];
      final list2 = [3, 4, 5, 6, 7];
      final result = list1.intersect(list2, distinct: false).toList();
      expect(result, [3, 4, 5, 3, 4, 5]);
    });

    test('intersection 4', () {
      final list1 = [1, 2, 3, 4, 5, 3, 4, 5];
      final list2 = [3, 4, 5, 6, 7];
      final result = list1.intersect(list2).toList();
      expect(result, [3, 4, 5]);
    });
  });

  group('intersectionBy', () {
    test('intersectionBy 1', () {
      final list1 = ['apple', 'banana', 'cherry'];
      final list2 = ['banana', 'date', 'fig'];
      final result = list1
          .intersectBy(list2,
              leftKey: (s) => s.length, rightKey: (s) => s.length)
          .toList();
      expect(result, ['banana', 'cherry']);
    });

    test('intersectionBy 2', () {
      final list1 = ['apple', 'banana', 'cherry', 'date'];
      final list2 = ['banana', 'date', 'fig'];
      final result = list1
          .intersectBy(list2,
              leftKey: (s) => s.length, rightKey: (s) => s.length)
          .toList();
      expect(result, ['banana', 'cherry', 'date']);
    });

    test('intersectionBy 3', () {
      final list1 = [1, 2, 3, 4, 5, 6];
      final list2 = ["3", "4", "5"];
      final result = list1
          .intersectBy(list2, leftKey: (s) => s.toString(), rightKey: (s) => s)
          .toList();
      expect(result, [3, 4, 5]);
    });
  });
}
