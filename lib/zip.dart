/// Strategy for zipping two iterables together.
///
/// - [shortest]: Stops when the shortest iterable is exhausted
/// - [longest]: Continues until both iterables are exhausted, filling missing values with null
/// - [first]: Continues until the first iterable is exhausted, filling missing values with null
/// - [second]: Continues until the second iterable is exhausted, filling missing values with null
enum ZipStrategy { shortest, longest, first, second }

class ZipIterator<L, R> implements Iterator<({L? left, R? right})> {
  final Iterator<L> items;
  final Iterator<R> others;
  final ZipStrategy zipStrategy;
  bool _itemsHasNext;
  bool _othersHasNext;

  ZipIterator(this.items, this.others, this.zipStrategy)
      : _itemsHasNext = true,
        _othersHasNext = true;

  @override
  ({L? left, R? right}) get current {
    return switch (zipStrategy) {
      ZipStrategy.shortest => (left: items.current, right: others.current),
      ZipStrategy.first => (
          left: items.current,
          right: _othersHasNext ? others.current : null
        ),
      ZipStrategy.second => (
          left: _itemsHasNext ? items.current : null,
          right: others.current
        ),
      ZipStrategy.longest => (
          left: _itemsHasNext ? items.current : null,
          right: _othersHasNext ? others.current : null
        ),
    };
  }

  @override
  bool moveNext() {
    if (_itemsHasNext) _itemsHasNext = items.moveNext();
    if (_othersHasNext) _othersHasNext = others.moveNext();

    return switch (zipStrategy) {
      ZipStrategy.shortest => _itemsHasNext && _othersHasNext,
      ZipStrategy.first => _itemsHasNext,
      ZipStrategy.second => _othersHasNext,
      ZipStrategy.longest => _itemsHasNext || _othersHasNext,
    };
  }
}

class ZipIterable<L, R> extends Iterable<({L? left, R? right})> {
  final Iterable<L> left;
  final Iterable<R> right;
  final ZipStrategy mode;

  ZipIterable(this.left, this.right, {required this.mode});

  @override
  Iterator<({L? left, R? right})> get iterator =>
      ZipIterator<L, R>(left.iterator, right.iterator, mode);
}

extension ZipExtension<L> on Iterable<L> {
  /// Zips this iterable with another iterable using the specified strategy.
  ///
  /// The strategy determines how to handle iterables of different lengths:
  /// - [ZipStrategy.shortest]: Stops when the shortest iterable is exhausted
  /// - [ZipStrategy.longest]: Continues until both iterables are exhausted, filling missing values with null
  /// - [ZipStrategy.first]: Continues until the first iterable is exhausted, filling missing values with null
  /// - [ZipStrategy.second]: Continues until the second iterable is exhausted, filling missing values with null
  ///
  /// Defaults to [ZipStrategy.shortest].
  ///
  /// Returns an iterable of tuples where each tuple contains an element from this iterable and an element from the other iterable.
  ///
  /// Example:
  /// ```dart
  /// final list1 = [1, 2, 3];
  /// final list2 = ['a', 'b', 'c'];
  /// final zipped = list1.zip(list2);
  /// // Returns: [(1, 'a'), (2, 'b'), (3, 'c')]
  /// ```
  Iterable<({L? left, R? right})> zip<R>(Iterable<R> other,
          [ZipStrategy mode = ZipStrategy.shortest]) =>
      ZipIterable<L, R>(this, other, mode: mode);
}
