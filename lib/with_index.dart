import 'package:flutter_dart_3/zip.dart';

/// Generates an infinite sequence of integers starting from 0.
Iterable<int> count() sync* {
  int i = 0;
  while (true) {
    yield i++;
  }
}

typedef WithIndexResult<T> = ({T item, int index});

extension WithIndexExtension<T> on Iterable<T> {
  /// Zips this iterable with an index iterable, creating pairs of (item, index).
  ///
  /// Example:
  /// ```dart
  /// ['a', 'b', 'c'].withIndex()
  /// // Returns: [(item: 'a', index: 0), (item: 'b', index: 1), (item: 'c', index: 2)]
  /// ```
  Iterable<WithIndexResult<T>> withIndex() {
    return zip<int>(count()).map((e) => (item: e.left!, index: e.right!));
  }
}
