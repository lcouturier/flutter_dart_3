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
    test('left join numbers', () {
      final leftItems = <int>[1, 2, 3, 4, 5];
      final rightItems = <int>[2, 4, 6, 2, 8];
      final result =
          leftItems.leftJoin(rightItems, (l) => l, (r) => r).toList();

      expect(result.length, 5);
      for (var element in result) {
        expect(element, isA<({int left, List<int> right})>());
        expect(element.left, isA<int>());
        expect(element.right, isA<List<int>>());
      }
      expect(result[0].left, 1);
      expect(result[0].right, <int>[]);
      expect(result[1].left, 2);
      expect(result[1].right, [2, 2]);
      expect(result[2].left, 3);
      expect(result[2].right, <int>[]);
      expect(result[3].left, 4);
      expect(result[3].right, [4]);
      expect(result[4].left, 5);
      expect(result[4].right, <int>[]);
    });
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

      final result = leftItems
          .leftJoin(rightItems, (l) => l.name, (r) => r.name)
          .map((e) => (e.left.name, e.right.isNotEmpty))
          .toList();
      expect(result, [
        ('Charlie', true),
        ('Bob', true),
        ('Alice', false),
        ('Bob', true),
      ]);
    });
  });
}
