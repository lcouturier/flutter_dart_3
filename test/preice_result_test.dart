import 'package:flutter_dart_3/price_result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceResult', () {
    test('with list of string values', () {
      final items = ['100', '200', 'invalid'];
      final results =
          items.map((value) => PriceResult.fromString(value)).toList();
      expect(results.length, 3);
      expect(results[0].isParsed, true);
      expect(results[0].hasError, false);
      expect(
          results[0].when(onSuccess: (value) => value, onError: (reason) => 0),
          100);
      expect(results[1].isParsed, true);
      expect(results[1].hasError, false);
      expect(
          results[1].when(onSuccess: (value) => value, onError: (reason) => 0),
          200);
      expect(results[2].isParsed, false);
      expect(results[2].hasError, true);
      expect(
          results[2].when(onSuccess: (value) => value, onError: (reason) => 0),
          0);
    });

    test('with list of string values and custom error value', () {
      final items = ['100', '200', 'invalid'];
      final results = items
          .map((value) => PriceResult.fromString(value))
          .map((e) => e.price)
          .where((value) => value != 0)
          .toList();
      expect(results.length, 2);
      expect(results[0], 100);
      expect(results[1], 200);
    });

    test('with price result iterator', () {
      final items = ['100', '200', 'invalid'];
      final result = items.priceResults.toList();
      expect(result.length, 2);
    });

    test('with price result extensions', () {
      final items = ['100', '200', 'invalid'];
      final result = items.prices.toList();
      expect(result.length, 2);
      expect(result[0].value, 100);
      expect(result[1].value, 200);
    });

    test('should parse valid price', () {
      final result = PriceResult.fromString('100');
      expect(result.isParsed, true);
      expect(result.hasError, false);
      expect(result.when(onSuccess: (value) => value, onError: (reason) => 0),
          100);
    });

    test('should handle invalid price', () {
      final result = PriceResult.fromString('invalid');
      expect(result.isParsed, false);
      expect(result.hasError, true);
      expect(
          result.when(onSuccess: (value) => value, onError: (reason) => 0), 0);
    });

    test('should handle null price', () {
      final result = PriceResult.fromString('');
      expect(result.isParsed, false);
      expect(result.hasError, true);
      expect(
          result.when(onSuccess: (value) => value, onError: (reason) => 0), 0);
    });
  });
}
