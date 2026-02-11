class WindowedIterator<T> implements Iterator<List<T>> {
  final Iterable<T> items;
  final int size;

  List<T> _current;
  int _index;

  WindowedIterator(this.items, this.size)
      : _current = [],
        _index = 0;

  @override
  List<T> get current => _current;

  @override
  bool moveNext() {
    final currentValue = items.skip(_index).take(size);

    if ((currentValue.isNotEmpty) && (currentValue.length == size)) {
      _current = currentValue.toList();
      _index++;
      return true;
    }

    return false;
  }
}

class WindoweIterable<T> extends Iterable<List<T>> {
  final Iterable<T> items;
  final int size;
  WindoweIterable(this.items, this.size);
  @override
  Iterator<List<T>> get iterator => WindowedIterator(items, size);
}

extension WindowedExtension<T> on Iterable<T> {
  Iterable<List<T>> windowed(int size) => WindoweIterable(this, size);
}
