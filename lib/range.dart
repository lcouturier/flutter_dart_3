class RangeIterator implements Iterator<num> {
  num _current;
  final num _end;
  final num _step;

  RangeIterator(num start, this._end, this._step) : _current = start - _step;

  @override
  num get current => _current;

  @override
  bool moveNext() {
    _current += _step;
    return _step > 0 ? _current <= _end : _current >= _end;
  }
}

class RangeIterable extends Iterable<num> {
  final num start;
  final num end;
  final num step;

  RangeIterable(this.start, this.end, this.step);

  @override
  Iterator<num> get iterator => RangeIterator(start, end, step);

  Iterable<num> stepBy(int n) {
    if (n <= 0) {
      throw ArgumentError('step must be > 0');
    }
    return RangeIterable(
      start,
      end,
      step * n,
    );
  }
}

extension IntRange on num {
  RangeIterable rangeTo(int end) {
    final step = this <= end ? 1 : -1;
    return RangeIterable(this, end, step);
  }
}
