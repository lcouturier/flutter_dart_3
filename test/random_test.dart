import 'package:flutter_dart_3/alphabetic.dart';
import 'package:flutter_dart_3/random_iterator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('random', () {
    test('random', () {
      final value = RandomIterable(1000).take(111).map((e) => e.toString()).join(", ");
      // ignore: avoid_print
      print(value);
    });

    test('random', () {
      final value = 1000.random.take(111).map((e) => e.toString()).join(", ");
      // ignore: avoid_print
      print(value);
    });
  });

  group('alphabetic', () {
    test('alphabetic', () {
      final value = AlphabeticIterable().take(26).map((e) => e.toString()).join(", ");
      // ignore: avoid_print
      print(value);
    });

    test('alphabetic iterator', () {
      final iter = AlphabeticIterable().iterator;
      while (iter.moveNext() && iter.current != 'z') {
        final value = iter.current.codeUnitAt(0) - 'a'.codeUnitAt(0);
        // ignore: avoid_print
        print('Character: ${iter.current}, Count: $value');
      }
    });
  });
}
