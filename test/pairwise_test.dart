import 'package:flutter_dart_3/pairwise.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('pairwise', () {
    test('pairwise', () {
      final result = [1, 2, 3, 4, 5].pairwise().toList();
      expect(result.length, 4);
      expect(result, [(left: 1, right: 2), (left: 2, right: 3), (left: 3, right: 4), (left: 4, right: 5)]);
    });
  });
}
