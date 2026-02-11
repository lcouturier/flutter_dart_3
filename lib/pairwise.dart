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
  /// Pairwise
  /// returns an iterable of pairs
  /// example: [1,2,3,4,5].pairwise()
  /// returns [(1,2), (2,3), (3,4), (4,5)]
  Iterable<({T left, T right})> pairwise() => PairwiseIterable(this);
}
