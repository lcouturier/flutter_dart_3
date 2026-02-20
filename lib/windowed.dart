extension WindowedExtension<T> on Iterable<T> {
  Iterable<List<T>> windowed(int size) sync* {
    for (var i = 0; i < length - size + 1; i++) {
      yield skip(i).take(size).toList();
    }
  }
}
