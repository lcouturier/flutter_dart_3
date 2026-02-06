// ignore_for_file: unused_element

import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';



// ignore_for_file: avoid_print

enum CardStatus {
  active,
  inactive,
  none,
  issued,
  blocked;

  String get name => toString().split('.').last;
}

void main(List<String> arguments) {
  String text = "Développement";
  int maxLength = 5;

  for (final chunk in text.characters.split(Characters.empty).toList().asMap().entries) {
    if (chunk.key % maxLength == 0 && chunk.key != 0) {
      print('-');
    }
    print(chunk.value);
  }
  

  final items = [
    (DateTime(2025, 1, 10), 150),
    (DateTime(2025, 1, 10), 200),
    (DateTime(2025, 3, 6), 150),
    (DateTime(2025, 5, 7), 200),
    (DateTime(2024, 1, 10), 150),
    (DateTime(2024, 1, 10), 200),
    (DateTime(2024, 3, 6), 150),
    (DateTime(2024, 5, 7), 200)
  ];

  
  print(items);

  
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
    Circle(radius: var r) => pi * r * r,
  };
}
