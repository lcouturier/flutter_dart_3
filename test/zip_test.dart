
import 'package:flutter_dart_3/zip.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('zip', () {
    test('zip', () {
      final result = [1, 2, 3].zip(['a', 'b', 'c']).toList();
      expect(result.length, 3);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: 'c'),
      ]);
    });

    test('zip with different lengths', () {
      final result = [1, 2, 3].zip(['a', 'b']).toList();
      expect(result.length, 2);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
      ]);
    });

    test('zip with empty iterable', () {
      final result = [1, 2, 3].zip([]).toList();
      expect(result.length, 0);
      expect(result, []);
    });
  });
}