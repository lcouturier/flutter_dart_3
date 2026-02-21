extension ChunkedIterable<T> on Iterable<T> {
  Iterable<List<T>> chunkedSync(int size) sync* {
    if (size <= 0) {
      throw ArgumentError.value(size, 'size', 'Must be > 0');
    }

    final iterator = this.iterator;
    while (iterator.moveNext()) {
      final chunk = <T>[iterator.current];

      for (var i = 1; i < size && iterator.moveNext(); i++) {
        chunk.add(iterator.current);
      }

      yield chunk;
    }
  }
}
