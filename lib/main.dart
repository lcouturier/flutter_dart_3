import 'dart:math';

// ignore_for_file: avoid_print

enum CardStatus { active,inactive, none, issued, blocked }

void main(List<String> arguments) {
  var status = CardStatus.blocked;
  final label = switch(status) {
      CardStatus.none => 'none',
      CardStatus.active => 'active',
      CardStatus.blocked || CardStatus.issued => 'blocked',
      _ => 'others'
  };

  print(status);

  // const socialAnxietyLevel = 8;

  // final reaction = switch(socialAnxietyLevel) {
  //     0 => 'Cool and collected',
  //     1 || 2 || 3 => 'Nervous but trying to stay calm',
  //     >= 4 && <=6 => 'Starting to panic',
  //     7 || 8 || 9 => 'Feeling overwhelmed and frozen',
  //     _ => 'Unable to function due to extreme anxiety'
  // };

  // print(reaction);   
}

(double, double) geoLocation(String name) {
  if (name == 'Nairobi') {
    return (-1.2921, 36.8219);  
  }
  return (0.0, 0.0);  
}



sealed class Shape {
}

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