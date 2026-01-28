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
  /// Unfolds an iterable from a seed value and a function
  Iterable<T> iterate(T Function(T) f) => UnfoldIterable(this, f);
}
