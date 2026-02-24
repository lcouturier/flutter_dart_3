typedef PairResult<T> = ({T left, T right});

class PairwiseIterator<T> implements Iterator<PairResult<T>> {
  final Iterator<T> _iterator;
  T? _previous;

  PairResult<T>? _current;

  PairwiseIterator(Iterator<T> items) : _iterator = items;

  @override
  PairResult<T> get current => _current!;

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

class PairwiseIterable<T> extends Iterable<PairResult<T>> {
  final Iterable<T> items;
  PairwiseIterable(this.items);
  @override
  Iterator<PairResult<T>> get iterator => PairwiseIterator(items.iterator);
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
  Iterable<PairResult<T>> pairwise() => PairwiseIterable(this);
}
