class FactorialIterator implements Iterator<num> {
  num _current;
  num _count;
  bool _started;
  FactorialIterator()
      : _current = 1,
        _count = 1,
        _started = false;

  @override
  num get current => _current;

  @override
  bool moveNext() {
    if (!_started) {
      _started = true;
      return true;
    }
    _count++;
    _current = _current * _count;
    return true; // infini
  }
}

class FactorialIterable extends Iterable<num> {
  @override
  Iterator<num> get iterator => FactorialIterator();
}
