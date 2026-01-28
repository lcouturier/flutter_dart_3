import 'package:flutter_dart_3/random_iterator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('random', () {
    test('random', () {
      final value = RandomIterable(1000).take(5).map((e) => e.toString()).join(", ");
      // ignore: avoid_print
      print(value);
    });
  });
}
