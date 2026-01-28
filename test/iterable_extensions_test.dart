import 'package:flutter_dart_3/extensions_iterable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // group('range test', () {
  //   test('test range ascending', () {
  //     final result = 1.range(10);
  //     expect(result, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  //   });
  //   test('test range descending', () {
  //     final result = 10.range(1);
  //     expect(result, [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]);
  //   });

  //   test('test range ascending step by 2', () {
  //     final result = 1.range(10).stepBy(2);
  //     expect(result, [1, 3, 5, 7, 9]);
  //   });

  //   test('test range descending step by 2', () {
  //     final result = 10.range(1).stepBy(2);
  //     expect(result, [10, 8, 6, 4, 2]);
  //   });
  // });

  group('separatedBy', () {
    test('test strings', () {
      final result = ['a', 'b', 'c'].separatedBy('x').join();
      expect(result, 'axbxc');
    });

    test('test empty', () {
      final result = [].separatedBy('x').join();
      expect(result, '');
    });

    test('test one element', () {
      final result = ['A'].separatedBy('x').join();
      expect(result, 'A');
    });

    test('letters with predicate', () {
      final result = ['a', 'b', 'c'].separatedBy('x', predicate: (e) => e == 'b').join();
      expect(result, 'axbc');
    });

    test('numbers', () {
      final result = List.generate(10, (index) => index + 1).separatedBy(0).map((e) => e.toString()).join();
      expect(result, '10203040506070809010');
    });

    test('numbers operator', () {
      final result = (List.generate(10, (index) => index + 1) << 0).map((e) => e.toString()).join();
      expect(result, '10203040506070809010');
    });

    test('numbers with predicate', () {
      final result = [1, 2, 3, 4].separatedBy(0, predicate: (e) => e.isEven).map((e) => e.toString()).join();
      expect(result, '102304');
    });

    test('', () {
      final list = ['1', '2'];
      final listDivided = list.separatedBy('|').toList(); // => ['1','|','2']
      expect(listDivided, ['1', '|', '2']);
    });

    test('operator', () {
      final list = ['1', '2'];
      final listDivided = list << '|';
      expect(listDivided, ['1', '|', '2']);
    });
  });

  group('divideItems', () {
    test('test strings', () {
      final result = ['a', 'b', 'c'].divideItems('x').join();
      expect(result, 'axbxc');
    });

    test('test empty', () {
      final result = [].divideItems('x').join();
      expect(result, '');
    });

    test('test one element', () {
      final result = ['A'].divideItems('x').join();
      expect(result, 'A');
    });

    test('letters with predicate', () {
      final result = ['a', 'b', 'c', 'd', 'e'].divideItems('x', predicate: (e) => e != 'b').join();
      expect(result, 'abcxdxe');
    });

    test('one letter', () {
      final result = ['a'].divideItems('x').join();
      expect(result, 'a');
    });

    test('two letter', () {
      final result = ['a', 'b'].divideItems('x').join();
      expect(result, 'axb');
    });

    test('two letter with predicate', () {
      final result = ['a', 'b', 'c', 'd', 'e'].divideItems('x', predicate: (e) => e != 'b').join();
      expect(result, 'abcxdxe');
    });

    test('numbers', () {
      final result = List.generate(10, (index) => index + 1).divideItems(0).map((e) => e.toString()).join();
      expect(result, '10203040506070809010');
    });

    test('numbers with predicate', () {
      final result = [1, 2, 3, 4].divideItems(0, predicate: (e) => e.isEven).map((e) => e.toString()).join();
      expect(result, '1234');
    });

    test('', () {
      final list = ['1', '2'];
      final listDivided = list.divideItems('|').toList(); // => ['1','|','2']
      expect(listDivided, ['1', '|', '2']);
    });
  });
}
