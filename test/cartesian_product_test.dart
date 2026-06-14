import 'package:flutter_dart_3/cartesian_iterator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('cartesianProduct', () {
    test('returns the Cartesian product of two lists', () {
      final list1 = [1, 2];
      final list2 = ['a', 'b'];
      final result = list1.cartesianProduct(list2);
      expect(result, [(1, 'a'), (1, 'b'), (2, 'a'), (2, 'b')]);
    });

    test('returns empty list if one of the lists is empty', () {
      final list1 = [1, 2];
      final list2 = <String>[];
      final result = list1.cartesianProduct(list2);
      expect(result, []);
    });

    test('returns empty list if both lists are empty', () {
      final list1 = <int>[];
      final list2 = <String>[];
      final result = list1.cartesianProduct(list2);
      expect(result, []);
    });

    test('handles single element lists', () {
      final list1 = [42];
      final list2 = ['x'];
      final result = list1.cartesianProduct(list2);
      expect(result, [(42, 'x')]);
    });
  });
}
