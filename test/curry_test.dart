import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('curry', () {
    test('test 1', () {
      add(x, y) => x + y;

      final f = add.curry(1);
      final result = f(2);
      expect(result, 3);
    });

    test('test 2', () {
      add(x, y, z) => x + y + z;
      final f = add.currying;
      final result = f(2)(2)(2);
      expect(result, 6);
    });
    test('test 3', () {
      add(x, y, z) => x + y + z;

      final f = add.curry(2);
      final result = f(2, 2);
      expect(result, 6);
    });
  });
}
