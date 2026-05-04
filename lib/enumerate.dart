typedef IndexedValue<T> = ({int index, T value});

class EnumerateIterator<T> implements Iterator<IndexedValue<T>> {
  final Iterator<T> _source;
  late final int _step;
  late int _index;
  late bool _started;

  EnumerateIterator(Iterable<T> iterable, [int from = 0, int step = 1])
      : _source = iterable.iterator,
        _started = false,
        _step = step,
        _index = from;

  @override
  IndexedValue<T> get current => (index: _index, value: _source.current);

  @override
  bool moveNext() {
    if (!_source.moveNext()) return false;
    if (!_started) {
      _started = true;
    } else {
      _index += _step;
    }
    return true;
  }
}

class EnumerateIterable<T> extends Iterable<IndexedValue<T>> {
  final Iterable<T> _source;
  final int from;
  final int step;
  EnumerateIterable(this._source, this.from, this.step);

  @override
  Iterator<IndexedValue<T>> get iterator =>
      EnumerateIterator(_source, from, step);

  // Optimisation optionnelle : si la source connaît sa taille, l'itérable indexé aussi
  @override
  int get length => _source.length;
}

extension IterableExtensions<T> on Iterable<T> {
  Iterable<IndexedValue<T>> get withIndex => EnumerateIterable(this, 0, 1);
  Iterable<IndexedValue<T>> enumerate({int from = 0, int step = 1}) =>
      EnumerateIterable(this, from, step);
}
