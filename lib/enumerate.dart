typedef IndexedValue<T> = ({int index, T value});

class EnumerateIterator<T> implements Iterator<IndexedValue<T>> {
  final Iterator<T> _it;
  int _index = -1;
  EnumerateIterator(Iterable<T> iterable) : _it = iterable.iterator;

  @override
  IndexedValue<T> get current => (index: _index, value: _it.current);

  @override
  bool moveNext() {
    if (!_it.moveNext()) return false;
    _index++;
    return true;
  }
}

class EnumerateIterable<T> extends Iterable<IndexedValue<T>> {
  final Iterable<T> iterable;
  EnumerateIterable(this.iterable);
  @override
  Iterator<IndexedValue<T>> get iterator => EnumerateIterator(iterable);
}

extension IterableExtensions<T> on Iterable<T> {
  Iterable<IndexedValue<T>> get indexedValues => EnumerateIterable(this);
}
