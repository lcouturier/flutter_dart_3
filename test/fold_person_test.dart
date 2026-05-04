import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

class Person {
  final String name;
  final String firstName;
  final int age;

  Person(this.name, this.firstName, this.age);

  Person copywith({String? name, String? firstName, int? age}) {
    return Person(
        name ?? this.name, firstName ?? this.firstName, age ?? this.age);
  }
}

void main() {
  group('unfold', () {
    test('apply update', () {
      final mySelf = Person('Couturier', 'Laurent', 60);
      final applies = <Person Function(Person)>[
        (p) => p.copywith(name: 'Dupont'),
        (p) => p.copywith(firstName: 'Jean'),
        (p) => p.copywith(age: 30),
      ];

      final result = applies.fold(
          mySelf, (previousValue, element) => element(previousValue));
      expect(result.name, 'Dupont');
      expect(result.firstName, 'Jean');
      expect(result.age, 30);
    });

    test('apply andThen', () {
      final mySelf = Person('Couturier', 'Laurent', 60);

      final f = ((p) => p.copywith(name: 'Dupont'))
          .andThen((p) => p.copywith(firstName: 'Jean'))
          .andThen((p) => p.copywith(age: 30));

      final result = f(mySelf);
      expect(result.name, 'Dupont');
      expect(result.firstName, 'Jean');
      expect(result.age, 30);
    });
  });
}
