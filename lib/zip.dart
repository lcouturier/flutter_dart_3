class ZipIterator<L, R> implements Iterator<({L left, R right})> {
  final Iterator<L> items;
  final Iterator<R> right;

  ZipIterator(this.items, this.right);

  @override
  ({L left, R right}) get current =>
      (left: items.current, right: right.current);

  @override
  bool moveNext() {
    if (!items.moveNext() || !right.moveNext()) return false;

    return true; // infini
  }
}

class ZipIterable<L, R> extends Iterable<({L left, R right})> {
  final Iterable<L> left;
  final Iterable<R> right;

  ZipIterable(this.left, this.right);

  @override
  Iterator<({L left, R right})> get iterator =>
      ZipIterator<L, R>(left.iterator, right.iterator);
}

extension ZipExtension<L> on Iterable<L> {
  Iterable<({L left, R right})> zip<R>(Iterable<R> other) =>
      ZipIterable<L, R>(this, other);
}
