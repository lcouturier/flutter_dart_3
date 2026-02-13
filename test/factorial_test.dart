// ignore_for_file: avoid_print

import 'package:flutter_dart_3/factorial.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('factorial', () {
    test('iterate int', () {
      final f = FactorialIterable();
      print(f.take(10).join(', '));
    });

    test('iterate int 2', () {
      final f = FactorialIterable();
      print(f.take(5).join(', '));
    });

    test('factirial cache', () {
      final f = factorial();
      print(f(10));
      print(f(11));
      print(f(11));
    });

    test('factirial cache 2', () {
      final f = factorial();
      print(f(5));
      print(f(6));
      print(f(6));
    });
  });
}
