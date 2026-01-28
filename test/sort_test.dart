import 'package:flutter_dart_3/sort.dart';
import 'package:flutter_test/flutter_test.dart';

class Person {
  final int age;
  final String name;
  Person(this.age, this.name);
  @override
  String toString() => '$name ($age)';
}

void main() {
  group('Tri multi-critères corrigé', () {
    test('âge décroissant puis nom croissant', () {
      final persons = [
        Person(30, 'Charlie'),
        Person(20, 'Bob'),
        Person(20, 'Alice'),
        Person(30, 'Bob'),
      ];

      final result = persons.orderByDescending((p) => p.age).thenBy((p) => p.name).toList();

      expect(result.map((p) => '${p.age}-${p.name}').toList(), [
        '30-Bob',
        '30-Charlie',
        '20-Alice',
        '20-Bob',
      ]);
    });

    test('chaînage de plusieurs thenBy conserve les critères précédents', () {
      final persons = [
        Person(30, 'Bob'),
        Person(30, 'Bob'),
        Person(20, 'Alice'),
        Person(20, 'Alice'),
      ];

      final result = persons
          .orderBy((p) => p.age)
          .thenBy((p) => p.name)
          .thenBy((p) => p.hashCode) // dernier critère pour casser égalités
          .toList();

      // Alice (20) doit être avant Bob (30)
      expect(result.first.age, 20);
    });
  });
}
