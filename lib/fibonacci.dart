class FibonacciIterator implements Iterator<int> {
  int _a, _b;
  bool _started = false;

  FibonacciIterator([this._a = 0, this._b = 1]);

  @override
  int get current => _a;

  @override
  bool moveNext() {
    if (!_started) {
      _started = true;
      return true;
    }
    final next = _a + _b;
    _a = _b;
    _b = next;
    return true;
  }
}

class FibonacciIterable extends Iterable<int> {
  @override
  Iterator<int> get iterator => FibonacciIterator();
}
