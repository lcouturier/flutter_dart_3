extension CycleIterable<T> on Iterable<T> {
  Iterable<T> cycle() sync* {
    if (isEmpty) return;

    while (true) {
      for (final element in this) {
        yield element;
      }
    }
  }
}
