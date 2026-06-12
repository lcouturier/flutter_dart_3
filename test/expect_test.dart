import 'package:flutter_dart_3/expect.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('expect', () {
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
          .expect(
            right,
            (l) => l['id'],
            (r) => r['id'],
          )
          .toList();

      expect(result, [
        {'id': 1, 'name': 'Alice'},
        {'id': 3, 'name': 'Charlie'},
      ]);
    });
  });
}
