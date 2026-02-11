class PairwiseIterator<T> implements Iterator<({T left, T right})> {
  final Iterable<T> items;
  int _index;

  PairwiseIterator(this.items) : _index = 0;

  ({T left, T right})? _current;

  @override
  ({T left, T right}) get current => _current!;

  @override
  bool moveNext() {
    final pair = items.skip(_index).take(2);

    if ((pair.isNotEmpty) && (pair.length == 2)) {
      _current = (left: pair.first, right: pair.last);
      _index++;
      return true;
    }

    return false;
  }
}

class PairwiseIterable<T> extends Iterable<({T left, T right})> {
  final Iterable<T> items;
  PairwiseIterable(this.items);
  @override
  Iterator<({T left, T right})> get iterator => PairwiseIterator(items);
}

extension PairwiseExtension<T> on Iterable<T> {
  Iterable<({T left, T right})> pairwise() => PairwiseIterable(this);
}
