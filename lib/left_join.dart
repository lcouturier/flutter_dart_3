class LeftJoinIterator<L, R, K> implements Iterator<({L left, List<R> right})> {
  late final Iterator<L> _left;
  late final Map<K, List<R>> _rightIndex;
  late final K Function(L) _leftKey;

  late L _currentLeft;

  LeftJoinIterator(
    Iterable<L> left,
    Iterable<R> right,
    K Function(L) leftKey,
    K Function(R) rightKey,
  ) {
    _left = left.iterator;
    _leftKey = leftKey;
    _rightIndex = {};
    for (final r in right) {
      final key = rightKey(r);
      if (_rightIndex.containsKey(key)) {
        _rightIndex[key]!.add(r);
      } else {
        _rightIndex[key] = [r];
      }
    }
  }

  @override
  ({L left, List<R> right}) get current {
    return (
      left: _currentLeft,
      right: _rightIndex[_leftKey(_currentLeft)] ?? [],
    );
  }

  @override
  bool moveNext() {
    if (!_left.moveNext()) return false;
    _currentLeft = _left.current;
    return true;
  }
}

class LeftJoinIterable<L, R, K> extends Iterable<({L left, List<R> right})> {
  final Iterable<L> left;
  final Iterable<R> right;
  final K Function(L) leftKey;
  final K Function(R) rightKey;

  LeftJoinIterable(this.left, this.right, this.leftKey, this.rightKey);

  @override
  Iterator<({L left, List<R> right})> get iterator =>
      LeftJoinIterator(left, right, leftKey, rightKey);
}

extension LeftJoinExtension<L> on Iterable<L> {
  Iterable<({L left, List<R> right})> leftJoin<R, K>(
          Iterable<R> other, K Function(L) leftKey, K Function(R) rightKey) =>
      LeftJoinIterable(this, other, leftKey, rightKey);
}
