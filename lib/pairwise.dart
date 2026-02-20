class PairwiseIterator<T> implements Iterator<({T left, T right})> {
  final Iterator<T> _iterator;
  T? _previous;

  ({T left, T right})? _current;

  PairwiseIterator(Iterator<T> items) : _iterator = items;

  @override
  ({T left, T right}) get current => _current!;

  @override
  bool moveNext() {
    if (_previous == null) {
      if (!_iterator.moveNext()) return false;
      _previous = _iterator.current;
    }

    if (!_iterator.moveNext()) return false;

    final next = _iterator.current;
    _current = (left: _previous as T, right: next);
    _previous = next;

    return true;
  }
}

class PairwiseIterable<T> extends Iterable<({T left, T right})> {
  final Iterable<T> items;
  PairwiseIterable(this.items);
  @override
  Iterator<({T left, T right})> get iterator => PairwiseIterator(items.iterator);
}

extension PairwiseExtension<T> on Iterable<T> {
  /// Returns an iterable of consecutive pairs from the input iterable.
  ///
  /// Example:
  /// ```dart
  /// final list = [1, 2, 3, 4];
  /// for (final (left, right) in list.pairwise()) {
  ///   print('$left -> $right');
  /// }
  /// // Output:
  /// // 1 -> 2
  /// // 2 -> 3
  /// // 3 -> 4
  /// ```
  Iterable<({T left, T right})> pairwise() => PairwiseIterable(this);
}
