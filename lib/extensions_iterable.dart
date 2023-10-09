import 'package:flutter_dart_3/extensions.dart';

typedef TestIndexed<T> = bool Function(int, T);
typedef MapIndexed<T, R> = R Function(int, T);

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

  Iterable<T> separatedBy(T separator) {
    return indexed.expand((e) => [if (e.$1 > 0) separator, e.$2]);
  }

  // mapIndexed
  Iterable<R> mapIndexed<R>(R Function(int index, T item) operation) {
    return indexed.map((e) => operation(e.$1, e.$2));
  }

  // whereIndexed
  Iterable<T> whereIndexed(bool Function(int index, T item) test) {
    return indexed.where((e) => test(e.$1, e.$2)).map((e) => e.$2);
  }

  Iterable<List<T>> split(int size) {
    assert(size > 0);
    int chunks = (length / size).ceil();
    return List.generate(chunks, (i) => skip(i * size).take(size).toList());
  }

  /// Projects each element of a sequence to an Iterable<E>, flattens the resulting sequences into one sequence,
  /// and invokes a result selector function on each element.
  ///
  /// ```dart
  /// var users = [
  ///  (name: "Reza", roles: ["Superadmin"]),
  ///  (name: "Amin", roles: ["Guest", "Reseption"]),
  ///  (name: "Nima", roles: ["Nurse", "Guest"]),
  /// ];
  /// final result = users.selectMany((user) => user.roles, (user, role) => (user.name, role));
  /// expect(result, [
  ///   ('Reza', 'Superadmin'),
  ///   ('Amin', 'Guest'),
  ///   ('Amin', 'Reseption'),
  ///   ('Nima', 'Nurse'),
  ///   ('Nima', 'Guest'),
  /// ]);
  /// ```
  Iterable<R> selectMany<R, S>(Iterable<S> Function(T) collectionSelector, R Function(T, S) resultSelector) {
    return expand((e) => collectionSelector(e).map((t) => resultSelector(e, t)));
  }

  Iterable<(T, S)> joinWhere<S>(Iterable<S> others, bool Function(T, S) test) {
    return expand((x) => others.where((y) => test(x, y)).map((y) => (x, y)));
  }
}
