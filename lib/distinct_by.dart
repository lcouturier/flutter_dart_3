// Pourquoi cette version est bonne
// ✅ O(n)
// ✅ Un seul passage
// ✅ Lazy (grâce à sync*)
// ✅ Stable (conserve l’ordre initial)
extension DistinctByExtension<T> on Iterable<T> {
  /// Returns an iterable that contains only the first element equal to each key.
  ///
  /// Example:
  /// ```dart
  /// final items = [1, 2, 3, 4, 5];
  /// final result = items.distinctBy((e) => e % 2);
  /// expect(result, [1, 2]);
  /// ```
  Iterable<T> distinctBy<K>(K Function(T element) keySelector) sync* {
    final seenKeys = <K>{};

    for (final element in this) {
      final key = keySelector(element);
      if (seenKeys.add(key)) {
        yield element;
      }
    }
  }

  /// Returns a map that groups elements of this iterable by the specified key.
  ///
  /// Example:
  /// ```dart
  /// final items = [1, 2, 3, 4, 5];
  /// final result = items.groupBy(key: (e) => e % 2);
  /// expect(result, {0: [2, 4], 1: [1, 3, 5]});
  /// ```
  Map<K, List<V>> groupBy<K, V>(
      {required K Function(T element) key, V Function(T element)? value}) {
    final transform = value ?? (e) => e as V;

    var grouped = <K, List<V>>{};
    for (var element in this) {
      var k = key(element);
      grouped.putIfAbsent(k, () => []).add(transform(element));
    }
    return grouped;
  }
}
