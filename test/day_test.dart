import 'package:flutter_dart_3/day.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('day next', () {
    test('test next', () {
      final result = Day.monday.next;
      expect(result, Day.tuesday);
    });

    test('test + 5', () {
      final result = Day.monday + 5;
      expect(result, Day.saturday);
    });

    test('test + 7', () {
      final result = Day.monday + 7;
      expect(result, Day.monday);
    });

    test('test + 9', () {
      final result = Day.monday + 9;
      expect(result, Day.wednesday);
    });
  });

  group('day previous', () {
    test('test previous', () {
      final result = Day.monday.previous;
      expect(result, Day.sunday);
    });

    test('previous - 5', () {
      final result = Day.monday - 5;
      expect(result, Day.wednesday);
    });

    test('previous - 7', () {
      final result = Day.monday - 7;
      expect(result, Day.monday);
    });

    test('previous - 9', () {
      final result = Day.monday - 9;
      expect(result, Day.saturday);
    });
  });
}
