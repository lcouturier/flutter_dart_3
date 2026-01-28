import 'package:flutter_dart_3/fibonacci.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('fibonacci', () {
    test('fibonacci', () {
      final value = FibonacciIterable().take(10).map((e) => e.toString()).join(", ");
      // ignore: avoid_print
      print(value);
    });
  });
}
