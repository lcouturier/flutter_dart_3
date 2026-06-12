// extension ExpectExtensions<L, R, K> on Iterable<L> {
//   Iterable<L> expect(
//     Iterable<R> right,
//     K Function(L) leftKey,
//     K Function(R) rightKey,
//   ) sync* {
//     final rightKeys = {for (final r in right) rightKey(r)};

//     for (final l in this) {
//       final lk = leftKey(l);
//       if (!rightKeys.contains(lk)) {
//         yield l;
//       }
//     }
//   }
// }

class ExpectIterator<L, R, K> implements Iterator<L> {
  final Iterator<L> _leftIterator;
  final Set<K> _rightKeys;
  final K Function(L) _leftKey;

  ExpectIterator(
    Iterable<L> left,
    Iterable<R> right,
    K Function(L) leftKey,
    K Function(R) rightKey,
  )   : _leftIterator = left.iterator,
        _rightKeys = {for (final r in right) rightKey(r)},
        _leftKey = leftKey;

  @override
  L get current => _leftIterator.current;

  @override
  bool moveNext() {
    while (_leftIterator.moveNext()) {
      final lk = _leftKey(_leftIterator.current);
      if (!_rightKeys.contains(lk)) {
        return true;
      }
    }
    return false;
  }
}

class ExpectIterable<L, R, K> extends Iterable<L> {
  final Iterable<L> left;
  final Iterable<R> right;
  final K Function(L) leftKey;
  final K Function(R) rightKey;

  ExpectIterable({
    required this.left,
    required this.right,
    required this.leftKey,
    required this.rightKey,
  });

  @override
  Iterator<L> get iterator => ExpectIterator(left, right, leftKey, rightKey);
}

extension ExpectExtension<L> on Iterable<L> {
  Iterable<L> expect<R, K>(
          Iterable<R> right, K Function(L) leftKey, K Function(R) rightKey) =>
      ExpectIterable(
          left: this, right: right, leftKey: leftKey, rightKey: rightKey);
}
