extension FunctionCompositionExtensions<T1, T2, T3> on T2 Function(T1) {
  T3 Function(T1) andThen(T3 Function(T2) operation) => (args) => operation(this(args));

  T3 Function(T1) operator >>(T3 Function(T2) operation) => (args) => operation(this(args));

  // memoize
  T2 Function(T1) cache() {
    final cache = <T1, T2>{};
    return (args) => cache.putIfAbsent(args, () => this(args));
  }

  // measure
  (T2, int) Function(T1) measure() {
    return (args) {
      final stopwatch = Stopwatch()..start();
      final result = this(args);

      // ignore: avoid_print
      //print('Elapsed time: ${stopwatch.elapsedMicroseconds} ms');
      return (result, stopwatch.elapsedMicroseconds);
    };
  }
}

extension FunctionExtensions<T1, T2> on T1 Function() {
  T2 Function() into(T2 Function(T1) operation) => () => operation(this());
}

extension TypeExtensions<T1, T2> on T1 {
  T2 Function() into(T2 Function(T1) operation) => () => operation(this);

  Iterable<T1> generate(T1 Function(T1) operation) sync* {
    var next = this;
    // ignore: literal_only_boolean_expressions
    while (true) {
      yield next;
      next = operation(next);
    }
  }
}

extension Function2Extensions<F, S, R> on R Function(F, S) {
  R Function(S) curry(F first) => (second) => this(first, second);
  R Function(S) operator <<(F first) => (second) => this(first, second);
  Function currying() => (F first) => (S second) => this(first, second);
}

extension Function3Extensions<F, S, T, R> on R Function(F, S, T) {
  R Function(S, T) curry(F first) => (second, third) => this(first, second, third);

  R Function(S, T) operator <<(F first) => (second, third) => this(first, second, third);

  Function currying() => (F first) => (S second) => (T third) => this(first, second, third);
}

extension Function4Extensions<T1, T2, T3, T4, R> on R Function(T1, T2, T3, T4) {
  R Function(T2, T3, T4) curry(T1 t1) => (t2, t3, t4) => this(t1, t2, t3, t4);

  Function currying() => (T1 first) => (T2 second) => (T3 third) => (T4 fourth) => this(first, second, third, fourth);
}

extension Function5Extensions<T1, T2, T3, T4, T5, R> on R Function(T1, T2, T3, T4, T5) {
  R Function(T2, T3, T4, T5) curry(T1 t1) => (t2, t3, t4, t5) => this(t1, t2, t3, t4, t5);

  Function currying() =>
      (T1 first) => (T2 second) => (T3 third) => (T4 fourth) => (T5 fith) => this(first, second, third, fourth, fith);
}

extension MapExtensions<K, V> on Map<K, V> {
  (bool found, V value) getOrDefault(K key, V Function() defaultValue) {
    return containsKey(key) ? (true, this[key]!) : (false, defaultValue());
  }
}

extension ExtensionString on String {
  // left
  String left(int n) => substring(0, n);
  // right
  String right(int n) => substring(length - n);
}

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
    for (final item in this) {
      sum += operation(item);
    }
    return sum;
  }

  Iterable<T> separatedBy(T separartor) {
    return mapIndexed((index, item) => index == 0 ? [item] : [separartor, item]).expand((e) => e);
  }

  // mapIndexed
  Iterable<R> mapIndexed<R>(R Function(int index, T item) operation) {
    int index = 0;
    return map((e) => operation(index++, e));
  }

  // wherzIndexed
  Iterable<T> whereIndexed(bool Function(int index, T item) test) {
    int index = 0;
    return where((e) => test(index++, e));
  }
}

extension ExtensionInt on int {
  int _factorial(int n, [int acc = 1]) => n == 0 ? acc : _factorial(n - 1, n * acc);
  int Function(int) get _factorialCached => _factorial.cache();

  int get factorial => _factorialCached(this);
}

extension DateTimeExtensions on DateTime {
  bool get isLeapYear => year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  int get daysInMonth => DateTime(year, month + 1, 0).day;
  int get daysInYear => isLeapYear ? 366 : 365;
  int get dayOfYear => difference(DateTime(year, 1, 1)).inDays + 1;
  int get weekOfYear => ((dayOfYear - weekday + 10) / 7).floor();
}
