class ChunkedIterator<T> implements Iterator<List<T>> {
  final Iterator<T> source;
  final int size;
  List<T> _currentChunk;

  ChunkedIterator(this.source, this.size) : _currentChunk = [];

  @override
  List<T> get current => _currentChunk;

  @override
  bool moveNext() {
    final chunk = <T>[];

    while (source.moveNext()) {
      chunk.add(source.current);
      if (chunk.length == size) {
        _currentChunk = chunk;
        return true;
      }
    }

    if (chunk.isNotEmpty) {
      _currentChunk = chunk;
      return true;
    }

    _currentChunk = [];
    return false;
  }
}

class ChunkedIterable<T> extends Iterable<List<T>> {
  final Iterable<T> source;
  final int size;

  ChunkedIterable(this.source, this.size) {
    if (size <= 0) {
      throw ArgumentError.value(size, 'size', 'Must be > 0');
    }
  }

  @override
  Iterator<List<T>> get iterator => ChunkedIterator(source.iterator, size);
}

extension ChunkedExtension<T> on Iterable<T> {
  /// Chunks the iterable into sublists of the specified size.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].chunked(3)
  /// // Returns: [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]
  /// ```
  ///
  /// Throws [ArgumentError] if [size] is not greater than 0.
  Iterable<List<T>> chunked(int size) => ChunkedIterable<T>(this, size);
}
