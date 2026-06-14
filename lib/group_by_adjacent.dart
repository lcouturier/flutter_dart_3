/// Groups adjacent elements in an iterable based on a provided equality function.
class GroupByAdjacent<T> implements Iterator<List<T>> {
  final Iterator<T> _iterator;
  final bool Function(T, T) _areEqual;

  T? lastReadElement;
  List<T>? _current;
  bool _isFirstElement = true;
  bool _hasMoreElements = true;

  GroupByAdjacent(Iterable<T> iterable, {required bool Function(T, T) areEqual})
      : _iterator = iterable.iterator,
        _areEqual = areEqual;

  @override
  List<T> get current => _current!;

  @override
  bool moveNext() {
    if (_isFirstElement) {
      _isFirstElement = false;
      if (!_iterator.moveNext()) {
        _current = null;
        return false;
      }
    }
    if (!_hasMoreElements) {
      _current = null;
      return false;
    }

    final group = <T>[_iterator.current];
    while (_hasMoreElements = _iterator.moveNext()) {
      if (_areEqual(group.last, _iterator.current)) {
        group.add(_iterator.current);
      } else {
        break;
      }
    }

    _current = group;
    return true;
  }
}

/// An iterable that groups adjacent elements based on a provided equality function.
class GroupByAdjacentIterable<T> extends Iterable<List<T>> {
  final Iterable<T> _iterable;
  final bool Function(T, T) _areEqual;

  GroupByAdjacentIterable(Iterable<T> iterable,
      {required bool Function(T, T) areEqual})
      : _iterable = iterable,
        _areEqual = areEqual;

  @override
  Iterator<List<T>> get iterator =>
      GroupByAdjacent(_iterable, areEqual: _areEqual);
}

extension GroupByAdjacentExtension<T> on Iterable<T> {
  /// Groups adjacent elements in the iterable based on the provided equality function.
  ///
  /// The [areEqual] function determines whether two adjacent elements are considered equal.
  Iterable<List<T>> groupByAdjacent(bool Function(T, T) areEqual) =>
      GroupByAdjacentIterable(this, areEqual: areEqual);
}
