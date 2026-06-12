extension ExpectExtensions<L, R, K> on Iterable<L> {
  /// Returns the elements of this [Iterable] that do not have a corresponding key in the [right] [Iterable].
  ///
  /// The [leftKey] and [rightKey] functions are used to extract the keys
  /// from the elements of the left and right iterables, respectively. If not provided, the elements themselves are used as keys.
  /// Example:
  /// ```dart
  /// final left = [1, 2, 3, 4, 5];
  /// final right = [2, 4];
  /// final result = left.without(right).toList(); // result will be [1, 3, 5]
  /// ```
  Iterable<L> without(Iterable<R> right,
      {K Function(L)? leftKey, K Function(R)? rightKey}) sync* {
    final lk = leftKey ?? (l) => l as K;
    final rk = rightKey ?? (r) => r as K;
    final rightKeys = {for (final r in right) rk(r)};

    for (final item in this) {
      final key = lk(item);
      if (!rightKeys.contains(key)) {
        yield item;
      }
    }
  }
}

// class ExpectIterator<L, R, K> implements Iterator<L> {
//   late final Iterator<L> _leftIterator;
//   late final Set<K> _rightKeys;
//   late final K Function(L) _leftKey;
//   late final K Function(R) _rightKey;

//   ExpectIterator(
//     Iterable<L> left,
//     Iterable<R> right, {
//     K Function(L)? leftKey,
//     K Function(R)? rightKey,
//   }) {
//     _leftIterator = left.iterator;
//     _leftKey = leftKey ?? (l) => l as K;
//     _rightKey = rightKey ?? (r) => r as K;
//     _rightKeys = {for (final r in right) _rightKey(r)};
//   }

//   @override
//   L get current => _leftIterator.current;

//   @override
//   bool moveNext() {
//     while (_leftIterator.moveNext()) {
//       final lk = _leftKey(_leftIterator.current);
//       if (!_rightKeys.contains(lk)) {
//         return true;
//       }
//     }
//     return false;
//   }
// }

// class ExpectIterable<L, R, K> extends Iterable<L> {
//   final Iterable<L> left;
//   final Iterable<R> right;
//   final K Function(L)? leftKey;
//   final K Function(R)? rightKey;

//   ExpectIterable({
//     required this.left,
//     required this.right,
//     required this.leftKey,
//     required this.rightKey,
//   });

//   @override
//   Iterator<L> get iterator =>
//       ExpectIterator(left, right, leftKey: leftKey, rightKey: rightKey);
// }

// extension ExpectExtension<L> on Iterable<L> {
//   Iterable<L> expect<R, K>(
//     Iterable<R> right, {
//     K Function(L)? leftKey,
//     K Function(R)? rightKey,
//   }) =>
//       ExpectIterable(
//           left: this, right: right, leftKey: leftKey, rightKey: rightKey);
// }
