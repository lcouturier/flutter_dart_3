// ignore_for_file: avoid_print

import 'package:flutter_dart_3/enumerate.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('enumerate', () {
    test('enumerate 1', () {
      final result = ["a", "b", "c"].withIndex.map((x) => x.index).toList();
      expect(result, [0, 1, 2]);
    });

    test('enumerate 2', () {
      final result = ["a", "b", "c"]
          .enumerate(from: 0, step: 10)
          .map((x) => x.index)
          .toList();
      expect(result, [0, 10, 20]);
    });

    test('with iterable', () {
      for (final v in [10, 20, 30, 40].withIndex) {
        print('Élément ${v.index} : ${v.value}');
      }
    });

    test('with indexCustom', () {
      final result = [10, 20, 30, 40]
          .enumerate(from: 5, step: 3)
          .map((x) => x.index)
          .toList();
      expect(result, [5, 8, 11, 14]);
    });
  });
}
