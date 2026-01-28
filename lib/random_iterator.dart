import 'dart:math';

class RandomIterator implements Iterator<int> {
  int max;
  late int _value;
  late Random _random;

  RandomIterator.withMax(this.max) {
    _random = Random();
  }

  @override
  int get current => _value;

  @override
  bool moveNext() {
    final next = _random.nextInt(max);
    _value = next;
    return true;
  }
}

class RandomIterable extends Iterable<int> {
  final int max;

  RandomIterable(this.max);

  @override
  Iterator<int> get iterator => RandomIterator.withMax(max);
}
