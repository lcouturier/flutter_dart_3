class PairwiseIterator<T> implements Iterator<({T left, T right})> {
  final Iterator<T> left;
  final Iterator<T> right;

  PairwiseIterator(this.left, this.right);

  @override
  ({T left, T right}) get current => (left: left.current, right: right.current);

  @override
  bool moveNext() {
    if (!left.moveNext() || !right.moveNext()) return false;

    return true;
  }
}

class PairwiseIterable<T> extends Iterable<({T left, T right})> {
  final Iterable<T> items;
  PairwiseIterable(this.items);
  @override
  Iterator<({T left, T right})> get iterator =>
      PairwiseIterator(items.iterator, items.skip(1).iterator);
}

extension PairwiseExtension<T> on Iterable<T> {
  Iterable<({T left, T right})> pairwise() => PairwiseIterable(this);
}
