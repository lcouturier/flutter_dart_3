import 'package:flutter_dart_3/range.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('rangeTo should return the correct range when start is less than or equal to end', () {
    expect(0.rangeTo(5), [0, 1, 2, 3, 4, 5]);
    expect(5.rangeTo(0), [5, 4, 3, 2, 1, 0]);
    expect(10.rangeTo(10), [10]);
  });

  test('rangeTo should return an empty iterable when start is greater than end', () {
    expect(5.rangeTo(0), [5, 4, 3, 2, 1, 0]);
    expect(0.rangeTo(-5), [0, -1, -2, -3, -4, -5]);
  });

  test('rangeTo 10 to -10', () {
    expect(10.rangeTo(-10), [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10]);
  });

  test('rangeTo 10 to -10 and stepBy 2', () {
    expect(10.rangeTo(-10).stepBy(2), [10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10]);
  });

  test('rangeTo 10 to -10 and stepBy 3', () {
    expect(10.rangeTo(-10).stepBy(3), [10, 7, 4, 1, -2, -5, -8]);
  });
}
