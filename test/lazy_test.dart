import 'package:flutter_dart_3/lazy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('filter chip data copyWith', () {
    test('test lazy 1', () {
      final lazy = Lazy(() => 1);
      expect(lazy.isValueSet, false);
      expect(lazy.value, 1);
      expect(lazy.isValueSet, true);
    });
  });
}
