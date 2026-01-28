class RangeIterator implements Iterator<int> {
  int _current;
  final int _end;
  final int _step;

  RangeIterator(int start, this._end, this._step) : _current = start - _step;

  @override
  int get current => _current;

  @override
  bool moveNext() {
    _current += _step;
    return _step > 0 ? _current <= _end : _current >= _end;
  }
}

class RangeIterable extends Iterable<int> {
  final int start;
  final int end;
  final int step;

  RangeIterable(this.start, this.end, this.step);

  @override
  Iterator<int> get iterator => RangeIterator(start, end, step);

  Iterable<int> stepBy(int n) {
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

extension IntRange on int {
  RangeIterable rangeTo(int end) {
    final step = this <= end ? 1 : -1;
    return RangeIterable(this, end, step);
  }
}
