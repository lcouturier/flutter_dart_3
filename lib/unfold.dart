class UnfoldIterator<T> implements Iterator<T> {
  T _current;
  final T Function(T) _next;
  bool _started = false;

  UnfoldIterator(T value, T Function(T) operation)
      : _current = value,
        _next = operation;

  @override
  T get current => _current;

  @override
  bool moveNext() {
    if (!_started) {
      _started = true;
      return true;
    }
    _current = _next(_current);
    return true; // infini
  }
}

class UnfoldIterable<T> extends Iterable<T> {
  final T seed;
  final T Function(T) next;
  UnfoldIterable(this.seed, this.next);
  @override
  Iterator<T> get iterator => UnfoldIterator(seed, next);
}

extension Unfold<T> on T {
  // Iterable<T> iterate(T Function(T) f) => UnfoldIterable(this, f);

  /// Follows a sequence by applying a function to the current value
  ///
  /// Example:
  /// ```
  /// final result = 1.followWith((x) => x + 1).take(10).toList();
  /// expect(result, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  /// ```
  Iterable<T> followWith(T Function(T) operation) sync* {
    T current = this;
    while (true) {
      yield current;
      current = operation(current);
    }
  }
}
