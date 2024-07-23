// ignore_for_file: unused_element

import 'dart:math';

// ignore_for_file: avoid_print

enum CardStatus {
  active,
  inactive,
  none,
  issued,
  blocked;

  String get name => toString().split('.').last;
}

void main(List<String> arguments) {}

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
    Circle(radius: var r) => pi * r * r,
  };
}
