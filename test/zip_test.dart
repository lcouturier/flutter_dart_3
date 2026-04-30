import 'package:flutter_dart_3/with_index.dart';
import 'package:flutter_dart_3/zip.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('zip', () {
    test('withIndex', () {
      final result = ['a', 'b', 'c', 'd'].withIndex();
      expect(result.length, 4);
      expect(result, [
        (index: 0, item: 'a'),
        (index: 1, item: 'b'),
        (index: 2, item: 'c'),
        (index: 3, item: 'd'),
      ]);
    });

    test('zip iterable', () {
      final result =
          ZipIterable([1, 2, 3], ['a', 'b', 'c'], mode: ZipStrategy.shortest);
      expect(result.length, 3);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: 'c'),
      ]);
    });
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

    test('zip with different lengths with ZipStrategy.firstSource', () {
      final result = [1, 2, 3].zip(['a', 'b'], ZipStrategy.first).toList();
      expect(result.length, 3);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: null),
      ]);
    });

    test('zip with different lengths with ZipStrategy.secondSource', () {
      final result =
          [1, 2, 3].zip(['a', 'b', 'c', 'd'], ZipStrategy.second).toList();
      expect(result.length, 4);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: 'c'),
        (left: null, right: 'd'),
      ]);
    });

    test('zip with different lengths with ZipStrategy.shortest', () {
      final result =
          [1, 2, 3].zip(['a', 'b', 'c', 'd'], ZipStrategy.shortest).toList();
      expect(result.length, 3);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: 'c'),
      ]);
    });

    test('zip with different lengths with ZipStrategy.longest', () {
      final result =
          [1, 2, 3].zip(['a', 'b', 'c', 'd'], ZipStrategy.longest).toList();
      expect(result.length, 4);
      expect(result, [
        (left: 1, right: 'a'),
        (left: 2, right: 'b'),
        (left: 3, right: 'c'),
        (left: null, right: 'd'),
      ]);
    });

    test('zip with empty iterable', () {
      final result = [1, 2, 3].zip([]).toList();
      expect(result.length, 0);
      expect(result, []);
    });
  });
}
