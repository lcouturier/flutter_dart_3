// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

extension FunctionCompositionExtensions<T1, T2, T3> on T2 Function(T1) {
  T3 Function(T1) andThen(T3 Function(T2) operation) => (args) => operation(this(args));

  T3 Function(T1) operator >>(T3 Function(T2) operation) => (args) => operation(this(args));

  // memoize
  T2 Function(T1) cache() {
    final cache = <T1, T2>{};
    return (args) => cache.putIfAbsent(args, () => this(args));
  }

  // measure
  ({T2 result, int elapsed}) Function(T1) measure() {
    return (args) {
      final stopwatch = Stopwatch()..start();
      final result = this(args);
      return (result: result, elapsed: stopwatch.elapsedMicroseconds);
    };
  }
}

extension FunctionExtensions<T1, T2> on T1 Function() {
  T2 Function() into(T2 Function(T1) operation) => () => operation(this());
}

Iterable<T> generateSequence<T>(T initial, T Function(T) operation) sync* {
  var next = initial;
  // ignore: literal_only_boolean_expressions
  while (true) {
    yield next;
    next = operation(next);
  }
}

extension TypeExtensions<T1, T2> on T1 {
  T2 Function() into(T2 Function(T1) operation) => () => operation(this);

  Iterable<T1> unFold(T1 Function(T1) operation) sync* {
    var next = this;
    // ignore: literal_only_boolean_expressions
    while (true) {
      yield next;
      next = operation(next);
    }
  }
}

Func1<F, Func1<S, R>> curry2<R, F, S>(R Function(F, S) f) => (F a) => (S b) => f(a, b);
Func1<F, Func1<S, Func1<T, R>>> curry3<R, F, S, T>(R Function(F, S, T) f) => (F a) => (S b) => (T c) => f(a, b, c);
Func1<T1, Func1<T2, Func1<T3, Func1<T4, R>>>> curry4<R, T1, T2, T3, T4>(R Function(T1, T2, T3, T4) f) =>
    (T1 a) => (T2 b) => (T3 c) => (T4 d) => f(a, b, c, d);

typedef Func1<F, R> = R Function(F);
typedef Func2<F, S, R> = R Function(F, S);
typedef Func3<F, S, T, R> = R Function(F, S, T);
typedef Func4<T1, T2, T3, T4, R> = R Function(T1, T2, T3, T4);
typedef Func5<T1, T2, T3, T4, T5, R> = R Function(T1, T2, T3, T4, T5);

extension Function1Extensions<F, R> on R Function(F) {
  ({bool success, R? value}) Function(F) catchError() {
    return (F arg) {
      try {
        return (success: true, value: this(arg));
      } catch (e) {
        // ignore: avoid_print
        print(e);
        return (success: false, value: null);
      }
    };
  }
}

extension Function2Extensions<F, S, R> on R Function(F, S) {
  Func1<S, R> curry(F first) => (second) => this(first, second);
  Func1<S, R> operator <<(F first) => (second) => this(first, second);
  Func1<F, Func1<S, R>> get currying => curry2(this);
}

extension Function3Extensions<F, S, T, R> on R Function(F, S, T) {
  Func2<S, T, R> curry(F first) => (second, third) => this(first, second, third);
  Func2<S, T, R> operator <<(F first) => (second, third) => this(first, second, third);
  Func1<F, Func1<S, Func1<T, R>>> get currying => curry3(this);
}

extension Function4Extensions<T1, T2, T3, T4, R> on R Function(T1, T2, T3, T4) {
  R Function(T2, T3, T4) curry(T1 t1) => (t2, t3, t4) => this(t1, t2, t3, t4);
  Func1<T1, Func1<T2, Func1<T3, Func1<T4, R>>>> get currying => curry4(this);
}

extension Function5Extensions<T1, T2, T3, T4, T5, R> on R Function(T1, T2, T3, T4, T5) {
  R Function(T2, T3, T4, T5) curry(T1 t1) => (t2, t3, t4, t5) => this(t1, t2, t3, t4, t5);
  Function get currying =>
      (T1 first) => (T2 second) => (T3 third) => (T4 fourth) => (T5 fith) => this(first, second, third, fourth, fith);
}

extension MapExtensions<K, V> on Map<K, V> {
  (bool found, V value) getOrDefault(K key, V Function() defaultValue) {
    return containsKey(key) ? (true, this[key]!) : (false, defaultValue());
  }

  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};
  Map<K, V> operator -(Map<K, V> other) => Map.from(this)..removeWhere((key, value) => other.containsKey(key));
}

extension StringExtensions on String {
  String reverse() => split('').reversed.join();
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

extension on BuildContext {
  T readSafe<T extends StateStreamableSource<Object?>>() => BlocProvider.of<T>(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  ThemeData get theme => Theme.of(this);
}

typedef Validation<T> = bool Function(T);

bool _isValidDate(String input, String format, Validation<DateTime> validation) {
  try {
    final matched = RegExp('^[0-9]{2}/[0-9]{2}/[0-9]{4}\$').hasMatch(input);
    final date = DateFormat(format).parse(input);
    return matched && validation(date);
  } catch (exception) {
    return false;
  }
}

typedef Result<T> = ({bool success, T? value});

extension NullableExtensions1<T> on T? {
  Result<T> takeIf(bool Function(T it) predicate) => this != null
      ? predicate(this as T)
          ? (success: true, value: this)
          : (success: false, value: this)
      : (success: false, value: this);
}

extension NullableExtensions2<T> on Result<T> {
  /// Takes the value of the `Result` object if it satisfies the given `predicate`.
  ///
  /// The `predicate` is a function that takes a value of type `T` and returns a boolean.
  /// If the value satisfies the `predicate`, the entire `Result` object is returned.
  /// If the value does not satisfy the `predicate`, a new `Result` object is returned
  /// with the same `success` value but with `null` as the `value`.
  ///
  /// Parameters:
  /// - `predicate`: A function that takes a value of type `T` and returns a boolean.
  ///
  /// Returns:
  /// - A `Result` object.
  ///
  /// Example:
  /// ```dart
  /// final result = Result<int>(success: true, value: 42);
  /// final filteredResult = result.takeIf((value) => value > 10);
  /// print(filteredResult); // Result<int>(success: true, value: 42)
  ///
  /// final result2 = Result<int>(success: true, value: 5);
  /// final filteredResult2 = result2.takeIf((value) => value > 10);
  /// print(filteredResult2); // Result<int>(success: false, value: null)
  /// ```
  Result<T> takeIf(bool Function(T e) predicate) => this.success
      ? predicate.call(this.value as T)
          ? this
          : (success: this.success, value: this.value)
      : (success: this.success, value: this.value);
}
