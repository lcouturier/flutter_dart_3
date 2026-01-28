// ignore_for_file: avoid_print

import 'package:flutter_dart_3/unfold.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('unfold', () {
    test('iterate int', () {
      final result = 1.iterate((x) => x + 1).take(10).toList();
      expect(result, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    });

    test('iterate string', () {
      final result = "a".iterate((x) => '${x}a').take(10).join();
      expect(result, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    });

    test('iterate DateTime', () {
      final result = DateTime(2020).iterate((x) => x.add(const Duration(days: 1))).take(10).toList();
      expect(result, [
        DateTime(
          2020,
        ),
        DateTime(2020, 1, 2),
        DateTime(2020, 1, 3),
        DateTime(2020, 1, 4),
        DateTime(2020, 1, 5),
        DateTime(2020, 1, 6),
        DateTime(2020, 1, 7),
        DateTime(2020, 1, 8),
        DateTime(2020, 1, 9),
        DateTime(2020, 1, 10),
      ]);
    });

    test('iterate fibonacci', () {
      for (final v in (0, 1).iterate((e) => (e.$2, e.$1 + e.$2)).take(10)) {
        print(v.toString());
      }
    });

    test('iterate factorial', () {
      for (final v in (1, 1).iterate((e) => (e.$1 * e.$2, e.$2 + 1)).take(10)) {
        print(v.toString());
      }
    });
  });
}
