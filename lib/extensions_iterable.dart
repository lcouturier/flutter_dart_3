import 'package:flutter_dart_3/extensions.dart';

typedef TestIndexed<T> = bool Function(int, T);
typedef MapIndexed<T, R> = R Function(int, T);
typedef Predicate<T> = bool Function(T);

extension IterableIntExtensions on Iterable<num> {
  Iterable<num> shift({int count = 1}) sync* {
    yield 0;
    for (num element in skip(count)) {
      yield element;
    }
  }

  num _sum(Iterable<num> items) {
    if (items.isEmpty) return 0;
    return _sum(items.tail) + items.head;
  }

  num _sum2(Iterable<num> items, [num acc = 0]) => items.isEmpty ? acc : _sum2(items.tail, items.head + acc);

  ({num result, int elapsed}) Function(Iterable<num>) get _sumCached => _sum.cache().measure();

  ({num result, int elapsed}) get sum => _sumCached(this);
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

  //int countBy(bool Function(T) predicate) => where(predicate).length;

  Iterable<T> separatedBy(T separator, {bool Function(T)? predicate}) {
    return indexed.expand((e) => [if ((e.$1 > 0) && (predicate?.call(e.$2) ?? true)) separator, e.$2]);
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

  Iterable<R> joinWhere<S, R>(Iterable<S> others, bool Function(T, S) test, [R Function(T, S)? resultSelector]) {
    final selector = resultSelector ?? (x, y) => (x, y) as R;

    return expand((x) => others.where((y) => test(x, y)).map((y) => selector(x, y)));
  }

  Iterable<T> mapWhen({required Predicate predicate, required T Function(T) replacement}) {
    return map((e) => predicate(e) ? replacement(e) : e);
  }

  Iterable<E> mapNotNull<E>(E? Function(T element) f) => map(f).whereType<E>();

  // Iterable<E> mapNotNull<E>(E? Function(T element) f) sync* {
  //   for (var o in this) {
  //     final e = f(o);
  //     if (e != null) {
  //       yield e;
  //     }
  //   }
  // }

  Iterable<E> mapIndex<E>(E Function(T e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  /// Converts a sequence of [T] into a map using the given [key] and [value] functions.
  /// If the key is already present in the map, the value will be replaced with the new value.
  /// If the key is not present in the map, it will be added with the given value.
  /// The [key] function is used to extract the key from each element of the sequence.
  /// The [value] function is used to extract the value from each element of the sequence.
  ///
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final result = list.toMap((e) => e, (e) => e * 2);
  /// expect(result, {1: 2, 2: 4, 3: 6, 4: 8, 5: 10});
  /// ```
  Map<K, V> toMap<K, V>({required K Function(T element) key, V Function(List<T> element)? value}) {
    final transform = value ?? (e) => e as V;

    var grouped = <K, List<T>>{};
    for (var element in this) {
      var k = key(element);
      grouped.putIfAbsent(k, () => []).add(element);
    }
    return grouped.map((k, v) => MapEntry(k, transform(v)));
  }

  Map<K, int> toMapCount<K>({required K Function(T element) key}) {
    var grouped = <K, int>{};
    for (var element in this) {
      var k = key(element);
      grouped.putIfAbsent(k, () => 0);
      grouped[k] = grouped[k]! + 1;
    }
    return grouped;
  }

  Map<K, int> countBy<K>(K Function(T element) mapKey) {
    return fold(
      {},
      (previousValue, element) => previousValue + {mapKey(element): (previousValue[mapKey(element)] ?? 0) + 1},
    );
  }

  Iterable<T> unFold(T initialValue, T Function(T) operation) sync* {
    var next = initialValue;
    while (true) {
      yield next;
      next = operation(next);
    }
  }
}

extension ExtendedList<E> on List<E> {
  /// Adds a new element to the list at the specified index, or replaces the existing element if the index is greater than or equal to the length of the list.
  /// ```dart
  /// final list = [1, 2, 3];
  /// list.addOrReplace(1, 4);
  /// expect(list, [1, 4, 3]);
  /// ```
  void addOrReplace(int index, E newElement) {
    if (index > -1) {
      this[index] = newElement;
    } else {
      add(newElement);
    }
  }

  Iterable<R> expandIndexed<R>(Iterable<R> Function(int index, E element) expand) sync* {
    for (var index = 0; index < length; index++) {
      yield* expand(index, this[index]);
    }
  }
}
