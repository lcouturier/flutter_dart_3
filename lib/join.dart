class InnerJoinIterator<A, B, K> implements Iterator<({A left, B right})> {
  final Iterator<A> _leftIterator;
  final Map<K, B> _rightIndex;
  final K Function(A) _leftKey;

  ({A left, B right})? _current;

  InnerJoinIterator(
    Iterable<A> left,
    Iterable<B> right, {
    required K Function(A) leftKey,
    required K Function(B) rightKey,
  })  : _leftIterator = left.iterator,
        _leftKey = leftKey,
        _rightIndex = {
          for (final r in right) rightKey(r): r,
        };

  @override
  ({A left, B right}) get current => _current!;

  @override
  bool moveNext() {
    while (_leftIterator.moveNext()) {
      final leftValue = _leftIterator.current;
      final key = _leftKey(leftValue);
      final rightValue = _rightIndex[key];

      if (rightValue != null) {
        _current = (left: leftValue, right: rightValue);
        return true;
      }
    }

    _current = null;
    return false;
  }
}

class InnerJoinIterable<L, R, K> extends Iterable<({L left, R right})> {
  final Iterable<L> left;
  final Iterable<R> right;
  final K Function(L) leftKey;
  final K Function(R) rightKey;

  InnerJoinIterable({
    required this.left,
    required this.right,
    required this.leftKey,
    required this.rightKey,
  });

  @override
  Iterator<({L left, R right})> get iterator => InnerJoinIterator(left, right, leftKey: leftKey, rightKey: rightKey);
}

extension InnerJoinExtension<L> on Iterable<L> {
  Iterable<({L left, R right})> innerJoin<R, K>(Iterable<R> other, K Function(L) leftKey, K Function(R) rightKey) =>
      InnerJoinIterable<L, R, K>(left: this, right: other, leftKey: leftKey, rightKey: rightKey);
}
