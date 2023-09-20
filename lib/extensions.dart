import 'package:flutter/rendering.dart';

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

extension ExtensionInt on int {
  int _factorial(int n, [int acc = 1]) => n == 0 ? acc : _factorial(n - 1, n * acc);
  int Function(int) get _factorialCached => _factorial.cache();

  int get factorial => _factorialCached(this);

  EdgeInsets get all => EdgeInsets.all(toDouble());
  EdgeInsets get symmetric => EdgeInsets.symmetric(vertical: toDouble(), horizontal: toDouble());
  EdgeInsets get onlyTop => EdgeInsets.only(top: toDouble());
  EdgeInsets get onlyBottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get onlyLeft => EdgeInsets.only(left: toDouble());
  EdgeInsets get onlyRight => EdgeInsets.only(right: toDouble());
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get zero => EdgeInsets.zero;
}

extension DateTimeExtensions on DateTime {
  bool get isLeapYear => year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  int get daysInMonth => DateTime(year, month + 1, 0).day;
  int get daysInYear => isLeapYear ? 366 : 365;
  int get dayOfYear => difference(DateTime(year, 1, 1)).inDays + 1;
  int get weekOfYear => ((dayOfYear - weekday + 10) / 7).floor();
}
