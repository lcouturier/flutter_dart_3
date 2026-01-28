import 'package:flutter_dart_3/left_join.dart';
import 'package:flutter_test/flutter_test.dart';

class _Person {
  final String name;
  final int age;
  const _Person(this.name, this.age);

  @override
  String toString() => '$name ($age)';
}

void main() {
  group('left join', () {
    test('left join', () {
      final leftItems = <_Person>[
        const _Person('Charlie', 30),
        const _Person('Bob', 20),
        const _Person('Alice', 20),
        const _Person('Bob', 30),
      ];

      final rightItems = <_Person>[
        const _Person('Charlie', 30),
        const _Person('Bob', 20),
        const _Person('Bob', 30),
      ];

      final result =
          leftItems.leftJoin(rightItems, (l) => l.name, (r) => r.name).map((e) => (e.$1.name, e.$2 != null)).toList();
      expect(result, [
        ('Charlie', true),
        ('Bob', true),
        ('Alice', false),
        ('Bob', true),
      ]);
    });
  });
}
