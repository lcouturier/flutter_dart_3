import 'package:flutter_dart_3/join.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('inner join', () {
    test('inner join', () {
      final left = [1, 2, 3, 6];
      final right = [2, 3, 4, 5, 6];
      final result = left.innerJoin(right, (l) => l, (r) => r).map((e) => e.left).toList();
      expect(result, [2, 3, 6]);
    });
  });
}
