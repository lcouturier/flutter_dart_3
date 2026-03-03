extension UltraLazySeparator<T> on Iterable<T> {
  Iterable<T> separatedBy(T separator, {bool Function(T)? predicate}) sync* {
    T? previous;
    final p = predicate ?? (_) => true;
    final iterator = this.iterator;

    if (!iterator.moveNext()) return;

    yield iterator.current;
    previous = iterator.current;
    while (iterator.moveNext()) {
      if ((previous != null) && (p(previous)) && (p(iterator.current))) yield separator;
      yield iterator.current;
      previous = iterator.current;
    }
  }

  Iterable<T> separatedBy2(T separator, [bool Function(T)? predicate]) sync* {
    final p = predicate ?? (_) => true;
    T? previous;
    for (var element in this) {
      if (previous != null && p(previous) && p(element)) {
        yield separator;
      }
      yield element;
      previous = element;
    }
  }

  /// Accumulates values using a binary operation
  /// [initial] is the initial value
  /// [operation] is called with the accumulated value and the current value
  /// and returns the next accumulated value
  /// returns an iterable of the accumulated values
  /// example: [1,2,3].accumulate(0, (a, b) => a + b)
  /// returns [0, 1, 3, 6]
  Iterable<T> accumulate(T initial, T Function(T, T) operation) sync* {
    T acc = initial;
    yield acc;
    for (var element in this) {
      acc = operation(acc, element);
      yield acc;
    }
  }
}
