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

/// Returns a function that calculates the factorial of a number.
/// The function uses a cache to store previously calculated values.
int Function(int) factorial() {
  final cache = <int, int>{};

  return (key) {
    if (cache.containsKey(key)) {
      return cache[key]!;
    }
    if (cache.isEmpty) cache[0] = 1;

    final k = cache.entries.last.key + 1;

    for (var i = k; i <= key; i++) {
      cache[i] = cache[i - 1]! * i;
    }

    return cache[key]!;
  };
}
