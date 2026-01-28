class ScanIterator<T> implements Iterator<T> {
  final T seed;
  final Iterator<T> items;
  final T Function(T, T) next;
  T _current;

  ScanIterator(this.seed, this.items, this.next) : _current = seed;

  @override
  T get current => _current;

  @override
  bool moveNext() {
    if (!items.moveNext()) return false;

    _current = next(_current, items.current);
    return true; // infini
  }
}

class ScanIterable<T> extends Iterable<T> {
  final T seed;
  final Iterable<T> items;
  final T Function(T, T) next;
  ScanIterable(this.seed, this.items, this.next);

  @override
  Iterator<T> get iterator => ScanIterator(seed, items.iterator, next);
}

extension ScanExtension<T> on Iterable<T> {
  /// Unfolds an iterable from a seed value and a function
  /// [seed] is the initial value
  /// [operation] is called with the previous value and the current value
  /// and returns the next value
  /// returns an iterable
  /// example: [1,2,3].scan(0, (a, b) => a + b)
  /// returns [0, 1, 3, 6]
  Iterable<T> scan(T initial, T Function(T, T) operation) => ScanIterable(initial, this, operation);
}
