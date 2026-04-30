typedef _Predicate<T> = bool Function(T);

class TakeWhileInclusiveIterator<T> implements Iterator<T> {
  final Iterator<T> items;
  final _Predicate predicate;
  bool _isInvalid = false;

  TakeWhileInclusiveIterator(this.items, this.predicate);

  @override
  T get current => items.current;

  @override
  bool moveNext() {
    if (_isInvalid) return false;
    if (!items.moveNext()) return false;

    _isInvalid = !predicate(items.current);

    return true;
  }
}

class TakeWhileInclusiveIterable<T> extends Iterable<T> {
  final Iterable<T> items;
  final _Predicate predicate;

  TakeWhileInclusiveIterable(this.items, this.predicate);

  @override
  Iterator<T> get iterator =>
      TakeWhileInclusiveIterator<T>(items.iterator, predicate);
}

extension ZipExtension<T> on Iterable<T> {
  /// Returns an iterable that contains all elements of this iterable until
  /// the first element that does not satisfy [predicate] is encountered.
  ///
  /// Example:
  /// ```dart
  /// final items = [1, 2, 3, 4, 5];
  /// final result = items.takeWhileInclusive((e) => e < 3);
  /// expect(result, [1, 2, 3]);
  /// ```
  Iterable<T> takeWhileInclusive(_Predicate predicate) =>
      TakeWhileInclusiveIterable<T>(this, predicate);
}
