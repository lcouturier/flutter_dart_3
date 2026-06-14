class IntersectionIterator<T> implements Iterator<T> {
  final Iterator<T> _source;
  final Set<T> _other;
  final Set<T>? _emitted;

  T? _current;

  IntersectionIterator(
    Iterable<T> source,
    Iterable<T> other,
    bool distinct,
  )   : _source = source.iterator,
        _other = other.toSet(),
        _emitted = distinct ? <T>{} : null;

  @override
  T get current => _current as T;

  @override
  bool moveNext() {
    while (_source.moveNext()) {
      final value = _source.current;

      if (_other.contains(value) &&
          (_emitted == null || _emitted!.add(value))) {
        _current = value;
        return true;
      }
    }

    _current = null;
    return false;
  }
}

class IntersectionIterable<T> extends Iterable<T> {
  final Iterable<T> source;
  final Iterable<T> other;
  final bool distinct;

  IntersectionIterable(this.source, this.other, this.distinct);

  @override
  Iterator<T> get iterator => IntersectionIterator(source, other, distinct);
}

extension IntersectionExtension<T> on Iterable<T> {
  Iterable<T> intersection(Iterable<T> other, {bool distinct = true}) =>
      IntersectionIterable(this, other, distinct);
}

extension IntersectionExtension2<T> on Iterable<T> {
  /// Returns an iterable that contains the intersection of this iterable and [other].
  ///
  /// If [distinct] is true (default), the intersection will contain only unique elements.
  /// If [distinct] is false, the intersection will contain all elements that are present in both iterables, including duplicates.
  /// Example:
  /// ```dart
  /// final list1 = [1, 2, 3, 4, 5];
  /// final list2 = [3, 4, 5, 6, 7];
  /// final result = list1.intersect(list2).toList();
  /// ```
  /// ```dart
  /// final list1 = [1, 2, 3, 4, 5, 3, 4, 5];
  /// final list2 = [3, 4, 5, 6, 7];
  /// final result = list1.intersect(list2, false).toList();
  /// ```
  Iterable<T> intersect(Iterable<T> other, {bool distinct = true}) sync* {
    final otherSet = other.toSet();
    final emitted = distinct ? <T>{} : null;

    for (final value in this) {
      if (otherSet.contains(value) && (emitted == null || emitted.add(value))) {
        yield value;
      }
    }
  }

  /// Returns an iterable that contains the intersection of this iterable and [right] based on the keys extracted by [leftKey] and [rightKey].
  ///
  /// The [leftKey] function is used to extract the key from the elements of this iterable, and the [rightKey] function is used to extract the key from the elements of the
  /// [right] iterable. If an element from this iterable has a key that matches a key from the [right] iterable, it will be included in the result.
  ///
  /// If [distinct] is true (default), the intersection will contain only unique elements.
  /// If [distinct] is false, the intersection will contain all elements that have matching keys, including duplicates.
  ///
  /// Example:
  /// ```dart
  /// final list1 = ['apple', 'banana', 'cherry'];
  /// final list2 = ['banana', 'date', 'fig'];
  /// final result = list1.intersectBy(list2, leftKey: (s) => s.length, rightKey: (s) => s.length).toList();
  /// result will be ['banana', 'cherry']
  /// ```
  Iterable<T> intersectBy<R, K>(Iterable<R> right,
      {required K Function(T) leftKey,
      required K Function(R) rightKey,
      bool distinct = true}) sync* {
    final otherSet = {for (final r in right) rightKey(r)}.toSet();
    final emitted = distinct ? <T>{} : null;

    for (final item in this) {
      final key = leftKey(item);
      if (otherSet.contains(key) && (emitted == null || emitted.add(item))) {
        yield item;
      }
    }
  }
}
