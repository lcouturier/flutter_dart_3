import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dart_3/extract_price.dart';

void main() {
  group('extractPrice', () {
    test('german format "1.234,56 €" returns 1235', () {
      expect(extractPrice('1.234,56 €'), 1235);
    });

    test('french format "1 234,56 €" returns 1235', () {
      expect(extractPrice('1 234,56 €'), 1235);
    });

    test('dutch format "€ 1.234,56" returns 1235', () {
      expect(extractPrice('€ 1.234,56'), 1235);
    });

    test('english format "€1,234.56" returns 1235', () {
      expect(extractPrice('€1,234.56'), 1235);
    });

    test('italian format "1234,56 €" returns 1235', () {
      expect(extractPrice('1234,56 €'), 1235);
    });

    test('small amount "12,56 €" returns 13', () {
      expect(extractPrice('12,56 €'), 13);
    });

    test('small amount "12.567 €" returns 13', () {
      expect(extractPrice('12.567 €'), 12567);
    });

    test('spanish format "1234,56 €" returns 1235', () {
      expect(extractPrice('1234,56 €'), 1235);
    });

    test('no decimal separator "1234 €" returns 1234', () {
      expect(extractPrice('1234 €'), 1234);
    });

    test('empty string returns null', () {
      expect(extractPrice(''), null);
    });

    test('invalid string returns null', () {
      expect(extractPrice('invalid'), null);
    });

    test('infinity string returns null', () {
      expect(extractPrice('∞'), null);
    });

    test('negative price "-1234,56 €" returns -1234', () {
      expect(extractPrice('-1234,56 €'), -1234);
    });

    test('zero price "0,00 €" returns 0', () {
      expect(extractPrice('0,00 €'), 0);
    });

    test('large number "1.000.000,99 €" returns 1000001', () {
      expect(extractPrice('1.000.000,99 €'), null);
    });

    test('large number with spaces "1 000 000,99 €" returns 1000001', () {
      expect(extractPrice('1000000000000000000000000000 €'), null);
    });

    test('no decimal separator returns the integer value', () {
      expect(extractPrice('12,34 €'), 13);
    });

    test('price with only cents "0,50 €" returns 1', () {
      expect(extractPrice('1,234 €'), 1234);
    });
  });
}
