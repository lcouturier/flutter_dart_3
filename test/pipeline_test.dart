import 'package:flutter_dart_3/pipeline.dart';
import 'package:flutter_test/flutter_test.dart';

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  group('pipeline', () {
    test('should apply stages to a Person object', () {
      final pipeline = Pipeline<Person>()
        ..addStage((
          condition: (person) => person.age >= 18,
          operation: (person) => Person(person.name.toUpperCase(), person.age),
        ))
        ..addStage((
          condition: (person) => person.age < 18,
          operation: (person) => Person(person.name.toLowerCase(), person.age),
        ));

      final adult = Person('Alice', 25);
      final minor = Person('Bob', 15);

      final processedAdult = pipeline.apply(adult);
      final processedMinor = pipeline.apply(minor);

      expect(processedAdult.name, 'ALICE');
      expect(processedMinor.name, 'bob');
    });

    test('should apply stages to an int', () {
      final pipeline = Pipeline<int>()
        ..addStage((
          condition: (number) => number % 2 == 0,
          operation: (number) => number * 2,
        ))
        ..addStage((
          condition: (number) => number % 2 != 0,
          operation: (number) => number + 1,
        ));

      const evenNumber = 4;
      const oddNumber = 5;

      final processedEven = pipeline.apply(evenNumber);
      final processedOdd = pipeline.apply(oddNumber);

      expect(processedEven, 8);
      expect(processedOdd, 6);
    });
  });
}
