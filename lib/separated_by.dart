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
}
