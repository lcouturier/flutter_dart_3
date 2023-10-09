import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dart_3/filter_chip_data.dart';

void main() {
  group('filter chip data copyWith', () {
    test('test change label', () {
      final result = const FilterChipData(
        label: 'label',
        count: 1,
        semanticsLabel: 'semanticsLabel',
      ).copyWith(
        label: () => 'label2',
        count: () => 2,
        semanticsLabel: () => 'semanticsLabel2',
      );

      expect(result.label, 'label2');
      expect(result.count, 2);
      expect(result.semanticsLabel, 'semanticsLabel2');
    });

    test('test null label', () {
      final result = const FilterChipData(
        label: 'label',
        count: 1,
        semanticsLabel: 'semanticsLabel',
      ).copyWith(label: () => null);

      expect(result.label, null);
      expect(result.count, 1);
      expect(result.semanticsLabel, 'semanticsLabel');
    });
  });
}
