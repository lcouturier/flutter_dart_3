import 'package:flutter_dart_3/extensions.dart';

typedef TestIndexed<T> = bool Function(int, T);
typedef MapIndexed<T, R> = R Function(int, T);
typedef IndexedElement<T> = ({int index, T element});

extension IterableIntExtensions on Iterable<num> {
  num _sum(Iterable<num> items) {
    if (items.isEmpty) return 0;
    return _sum(items.tail) + items.head;
  }

  num _sum2(Iterable<num> items, [num acc = 0]) => items.isEmpty ? acc : _sum2(items.tail, items.head + acc);

  (num, int) Function(Iterable<num>) get _sumCached => _sum.cache().measure();

  (num, int) get sum => _sumCached(this);
  num get sum2 => _sum2(this);
}

extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> get tail => skip(1);
  T get head => first;

  int sumBy(int Function(T) operation) {
    var sum = 0;
    for (final e in this) {
      sum += operation(e);
    }
    return sum;
  }

  // indexed
  Iterable<IndexedElement<T>> get indexed sync* {
    int i = 0;
    for (final e in this) {
      yield (index: i++, element: e);
    }
  }

  Iterable<T> separatedBy(T separator) {
    return this.indexed.expand((e) => [if (e.index > 0) separator, e.element]);
  }

  // mapIndexed
  Iterable<R> mapIndexed<R>(R Function(int index, T item) operation) {
    return indexed.map((e) => operation(e.index, e.element));
  }

  // whereIndexed
  Iterable<T> whereIndexed(bool Function(int index, T item) test) {
    return indexed.where((e) => test(e.index, e.element)).map((e) => e.element);
  }

  Iterable<List<T>> split(int size) {
    assert(size > 0);
    int chunks = (length / size).ceil();
    return List.generate(chunks, (i) => skip(i * size).take(size).toList());
  }

  Iterable<R> selectMany<R, S>(Iterable<S> Function(T) collectionSelector, R Function(T, S) resultSelector) {
    return expand((p) => collectionSelector(p).map((t) => resultSelector(p, t)));
  }
}
