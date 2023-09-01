// ignore_for_file: unused_element

import 'dart:math';

// ignore_for_file: avoid_print

enum CardStatus {
  active,
  inactive,
  none,
  issued,
  blocked,
}

typedef AddThree = int Function(int, int, int);

void main(List<String> arguments) {}

extension<T> on T {
  Iterable<T> generate(T Function(T) operation) sync* {
    var value = this;
    yield value;
    while (true) {
      value = operation(value);
      yield value;
    }
  }
}

extension<T> on Iterable<T> {
  Iterable<T> mapIndexed(T Function(int, T) operation) {
    int index = 0;
    return map((e) => operation(index++, e));
  }
}

(double, double) geoLocation(String name) {
  if (name == 'Nairobi') {
    return (-1.2921, 36.8219);
  }
  return (0.0, 0.0);
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) {
  return switch (shape) {
    Square(length: var l) => l * l,
    Circle(radius: var r) => pi * r * r
  };
}

extension on int Function(int, int) {
  int Function(int) curry(x) => (y) => this(x, y);
}

extension on int Function(int, int, int) {
  int Function(int, int) curry(x) => (y, z) => this(x, y, z);
}

extension on int Function(int, int, int, int) {
  int Function(int, int, int) curry(x) => (y, z, u) => this(x, y, z, u);
}

extension on int Function(int, int, int, int, int) {
  int Function(int, int, int, int) curry(x) =>
      (y, z, u, v) => this(x, y, z, u, v);
}

extension<K, V> on Map<K, V> {
  (bool, V) getOrDefault(K key, V Function() defaultValue) {
    return containsKey(key) ? (true, this[key]!) : (false, defaultValue());
  }
}
