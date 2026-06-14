typedef Pair<L, R> = (L left, R right);

class CartesianIterator<L, R> implements Iterator<Pair<L, R>> {
  final Iterator<L> left;
  final Iterable<R> right;
  Pair<L, R>? _current;
  Iterator<R> _rightIterator;
  L? _currentLeft;

  CartesianIterator(this.left, this.right)
      : _current = null,
        _rightIterator = right.iterator;

  @override
  Pair<L, R> get current => _current!;

  @override
  bool moveNext() {
    while (true) {
      if (_current == null) {
        if (!left.moveNext()) {
          _current = null;
          return false;
        }

        _currentLeft = left.current;
        _rightIterator = right.iterator;
      }

      if (_rightIterator.moveNext()) {
        _current = (_currentLeft!, _rightIterator.current);
        return true;
      }

      _current = null;
    }
  }
}

class CartesianIterable<L, R> extends Iterable<Pair<L, R>> {
  final Iterable<L> left;
  final Iterable<R> right;

  CartesianIterable(this.left, this.right);

  @override
  Iterator<Pair<L, R>> get iterator => CartesianIterator(left.iterator, right);
}

extension CartesianExtension<L, R> on Iterable<L> {
  Iterable<Pair<L, R>> cartesianProduct(Iterable<R> other) {
    return CartesianIterable(this, other);
  }

  Iterable<(L, R)> cartesian(
    Iterable<R> other,
  ) sync* {
    for (final l in this) {
      for (final r in other) {
        yield (l, r);
      }
    }
  }
}
