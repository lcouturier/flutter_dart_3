import 'package:flutter_dart_3/separated_by.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('separatedBy 1', () {
    final result = ['a', 'b', 'c'].separatedBy('x').join();
    expect(result, 'axbxc');
  });

  test('separatedBy 2', () {
    final result = ['a', 'b', 'c'].separatedBy('x').join();
    expect(result, 'axbxc');
  });

  test('separatedBy empty', () {
    final result = <String>{}.separatedBy('x').join();
    expect(result, '');
  });

  test('separatedBy with numbers', () {
    final result = [1, 2, 3].separatedBy(0, predicate: (e) => e != 2).join();
    expect(result, '123');
  });
}
