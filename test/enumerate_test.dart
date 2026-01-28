import 'package:flutter_dart_3/enumerate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('enumerate', () {
    test('enumerate', () {
      final result = ["a", "b", "c"].indexedValues.map((x) => x.index).toList();
      expect(result, [0, 1, 2]);
    });
  });
}
