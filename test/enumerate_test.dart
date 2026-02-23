import 'package:flutter_dart_3/enumerate.dart';
import 'package:flutter_dart_3/extensions_string.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('enumerate', () {
    test('enumerate', () {
      final result = ["a", "b", "c"].indexedValues.map((x) => x.index).toList();
      expect(result, [0, 1, 2]);
    });
  });

  group('Shuffle', () {
    test('Shuffle', () {
      final result = "lorem ipsum dolor sit amet".shuffled;
      // ignore: avoid_print
      print(result);
    });
  });
}
