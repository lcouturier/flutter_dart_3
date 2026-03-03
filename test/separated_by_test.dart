import 'package:flutter_dart_3/separated_by.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('separatedBy', () {
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
      final result = [1, 2, 3, 4, 5, 6].separatedBy(0, predicate: (e) => e != 2).join();
      expect(result, '123040506');
    });
  });

  group('separatedBy2', () {
    test('separatedBy 1', () {
      final result = ['a', 'b', 'c'].separatedBy2('x').join();
      expect(result, 'axbxc');
    });

    test('separatedBy 2', () {
      final result = ['a', 'b', 'c'].separatedBy2('x').join();
      expect(result, 'axbxc');
    });

    test('separatedBy empty', () {
      final result = <String>{}.separatedBy2('x').join();
      expect(result, '');
    });

    test('separatedBy with numbers', () {
      final result = [1, 2, 3, 4, 5, 6].separatedBy2(0, (e) => e != 2).join();
      expect(result, '123040506');
    });
  });

  test("accumulate", () {
    final result = [1, 2, 3, 4, 5].accumulate(0, (x, y) => x + y);
    // ignore: avoid_print
    print(result);
  });
}
