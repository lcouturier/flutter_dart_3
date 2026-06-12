import 'package:flutter_dart_3/expect.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('expect', () {
    test('expect with integers 1', () {
      final left = [1, 2, 3, 4, 5];
      final right = [2, 4];

      final result = left.without(right).toList();

      expect(result, [1, 3, 5]);
    });

    test('expect with integers 2', () {
      final left = [1, 2, 3, 4, 5];
      final right = [2, 4];

      final result = left
          .without(
            right,
            leftKey: (l) => l,
            rightKey: (r) => r,
          )
          .toList();

      expect(result, [1, 3, 5]);
    });

    test('expect', () {
      final left = [
        {'id': 1, 'name': 'Alice'},
        {'id': 2, 'name': 'Bob'},
        {'id': 3, 'name': 'Charlie'},
      ];

      final right = [
        {'id': 2, 'name': 'Bob'},
        {'id': 4, 'name': 'David'},
      ];

      final result = left
          .without(
            right,
            leftKey: (l) => l['id'],
            rightKey: (r) => r['id'],
          )
          .toList();

      expect(result, [
        {'id': 1, 'name': 'Alice'},
        {'id': 3, 'name': 'Charlie'},
      ]);
    });
  });
}
