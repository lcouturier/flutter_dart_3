// Pourquoi cette version est bonne
// ✅ O(n)
// ✅ Un seul passage
// ✅ Lazy (grâce à sync*)
// ✅ Stable (conserve l’ordre initial)
extension DistinctByExtension<T> on Iterable<T> {
  Iterable<T> distinctBy<K>(K Function(T element) keySelector) sync* {
    final seenKeys = <K>{};

    for (final element in this) {
      final key = keySelector(element);
      if (seenKeys.add(key)) {
        yield element;
      }
    }
  }
}
