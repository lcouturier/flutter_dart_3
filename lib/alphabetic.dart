import 'dart:math';

class AlphabeticIterator implements Iterator<String> {
  AlphabeticIterator()
      : _random = Random(),
        _current = 'a';
  String _current;
  final Random _random;

  @override
  String get current => _current;

  @override
  bool moveNext() {
    _current = String.fromCharCode('a'.codeUnitAt(0) + (_random.nextInt(26)));
    return true;
  }
}

class AlphabeticIterable extends Iterable<String> {
  @override
  Iterator<String> get iterator => AlphabeticIterator();
}
