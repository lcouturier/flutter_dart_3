import 'package:flutter_dart_3/chunked.dart';
import 'package:flutter_dart_3/unfold.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('invalid size', () {
    expect(() => [1, 2, 3].chunked(0), throwsArgumentError);
    expect(() => [1, 2, 3].chunked(-1), throwsArgumentError);
  });

  test('chunked', () {
    final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final chunked = list.chunked(3);
    expect(chunked, [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [10]
    ]);
  });

  test('chunked with empty list', () {
    final list = <int>[];
    final chunked = list.chunked(3);
    expect(chunked, []);
  });

  test('chunked with size 1', () {
    final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final chunked = list.chunked(1);
    expect(chunked, [
      [1],
      [2],
      [3],
      [4],
      [5],
      [6],
      [7],
      [8],
      [9],
      [10]
    ]);
  });

  test('chunked with size larger than list', () {
    final result = 1.iterate((x) => x + 1).chunked(5).take(3);
    expect(result, [
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15]
    ]);
  });
}
