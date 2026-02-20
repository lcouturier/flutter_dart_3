// ignore_for_file: avoid_print

import 'package:collection/collection.dart';
import 'package:flutter_dart_3/extensions.dart';
import 'package:flutter_dart_3/extensions_iterable.dart';
import 'package:flutter_dart_3/extensions_string.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('fold', () {
    final items = [
      (
        segmentPlacement: (hasMultipleChoices: false, seatMapPlacement: ''),
        preferencePlacement: (lastAvailableSeatComfortSpaceBlock: null),
        item: 1
      ),
      (
        segmentPlacement: (hasMultipleChoices: false, seatMapPlacement: ''),
        preferencePlacement: (lastAvailableSeatComfortSpaceBlock: ''),
        item: 2
      ),
      (
        segmentPlacement: (hasMultipleChoices: true, seatMapPlacement: ''),
        preferencePlacement: (lastAvailableSeatComfortSpaceBlock: null),
        item: 3
      ),
      (
        segmentPlacement: (hasMultipleChoices: true, seatMapPlacement: null),
        preferencePlacement: (lastAvailableSeatComfortSpaceBlock: null),
        item: 4
      ),
      (
        segmentPlacement: (hasMultipleChoices: false, seatMapPlacement: ''),
        preferencePlacement: (lastAvailableSeatComfortSpaceBlock: ''),
        item: 5
      ),
    ];

    test('test fold', () {
      final result = items.fold(false, (acc, e) {
        bool hasOnlySeatMap = !e.segmentPlacement.hasMultipleChoices && e.segmentPlacement.seatMapPlacement != null;
        bool isLastAvailableSeatInComfortSpace = e.preferencePlacement.lastAvailableSeatComfortSpaceBlock != null;
        return acc ? acc : !(hasOnlySeatMap || isLastAvailableSeatInComfortSpace);
      });

      expect(result, true);
    });

    test('test any', () {
      final result = items
          .map((e) => (
                hasOnlySeatMap: !e.segmentPlacement.hasMultipleChoices && e.segmentPlacement.seatMapPlacement != null,
                isLastAvailableSeatInComfortSpace: e.preferencePlacement.lastAvailableSeatComfortSpaceBlock != null
              ))
          .any((e) => !(e.hasOnlySeatMap || e.isLastAvailableSeatInComfortSpace));

      expect(result, true);
    });
  });

  group('andThen', () {
    test('test 1', () {
      final f = ((x) => x + 1).andThen((x) => x * 2);
      final result = f(1);
      expect(result, 4);
    });
  });

  group('andThen', () {
    test('test 1', () {
      final f = ((x) => x + 1).andThen((x) => x * 2);
      final result = f(1);
      expect(result, 4);
    });
  });

  group('into', () {
    test('test 1', () {
      final f = 1.into((x) => x + 1).into((x) => x * 2).into((x) => x - 1);
      final result = f();
      expect(result, 3);
    });
  });

  group('separatedBy', () {
    test('test numbers', () {
      final items = 1.unFold((e) => e + 1).take(5).toList();
      final result = items.separatedBy(0).toList();
      expect(result.length, 9);
    });

    test('test strings', () {
      final result = ['a', 'b', 'c'].separatedBy('x').join();
      expect(result, 'axbxc');
    });

    test('test empty', () {
      final result = [].separatedBy('x').join();
      expect(result, '');
    });

    test('test one element', () {
      final result = ['A'].separatedBy('x').join();
      expect(result, 'A');
    });
  });

  group('sum', () {
    test('test sum2', () {
      final items = 1.unFold((e) => e + 1).take(10).toList();
      final result = items.sum2;
      expect(result, 55);
    });
  });

  group('iterable split', () {
    test('test 1', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(3);
      expect(result.length, 3);
      expect(result, [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]);
    });

    test('test 2', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(4);
      expect(result.length, 3);
      expect(result, [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9]
      ]);
    });

    test('test 3', () {
      final result = [1, 2, 3, 4, 5, 6, 7, 8, 9].split(5);
      expect(result.length, 2);
      expect(result, [
        [1, 2, 3, 4, 5],
        [6, 7, 8, 9]
      ]);
    });

    test('test 4', () sync* {
      final iterable = [1, 2, 3, 4];
      expect(iterable.split(-1), throwsAssertionError);
    });

    test('test 5', () sync* {
      final iterable = [1, 2, 3, 4];
      expect(iterable.split(0), throwsAssertionError);
    });

    test('test 6', () {
      final result = [1, 2, 3, 4].split(4);
      expect(result.length, 1);
      expect(result, [
        [1, 2, 3, 4],
      ]);
    });
  });

  group('removeDigits', () {
    test('test 1', () {
      final result = 'abc123'.removeDigits();
      expect(result, 'abc');
    });

    test('test 2', () {
      final result = 'abc'.removeDigits();
      expect(result, 'abc');
    });

    test('test 3', () {
      final result = '123'.removeDigits();
      expect(result, '');
    });

    test('test 4', () {
      final result = ''.removeDigits();
      expect(result, '');
    });
  });

  group('left', () {
    test('test 1', () {
      final result = 'abc123'.left(3);
      expect(result, 'abc');
    });

    test('test 2', () {
      final result = ''.left(3);
      expect(result, '');
    });

    test('test 3', () {
      final result = 'abc123'.left(0);
      expect(result, 'abc123');
    });

    test('test 4', () sync* {
      expect('abc123'.left(-1), throwsAssertionError);
    });
  });

  group('right', () {
    test('test 1', () {
      final result = 'abc123'.right(3);
      expect(result, '123');
    });

    test('test 2', () {
      final result = ''.right(3);
      expect(result, '');
    });

    test('test 3', () {
      final result = 'abc123'.right(0);
      expect(result, 'abc123');
    });

    test('test 4', () sync* {
      expect('abc123'.right(-1), throwsAssertionError);
    });
  });

  group('selectMany', () {
    test('test 1', () {
      var users = [
        (name: "Reza", roles: ["Superadmin"]),
        (name: "Amin", roles: ["Guest", "Reseption"]),
        (name: "Nima", roles: ["Nurse", "Guest"]),
      ];
      final result = users.selectMany((user) => user.roles, (user, role) => (user.name, role));
      expect(result, [
        ('Reza', 'Superadmin'),
        ('Amin', 'Guest'),
        ('Amin', 'Reseption'),
        ('Nima', 'Nurse'),
        ('Nima', 'Guest'),
      ]);
    });

    test('test 2', () {
      var users = [
        (name: "Reza", roles: ["Superadmin"]),
        (name: "Amin", roles: ["Guest", "Reseption"]),
        (name: "Nima", roles: ["Nurse"]),
      ];
      final result = users.selectMany((user) => user.roles, (user, role) => (user.name, role));
      expect(result, [
        ('Reza', 'Superadmin'),
        ('Amin', 'Guest'),
        ('Amin', 'Reseption'),
        ('Nima', 'Nurse'),
      ]);
    });

    test('test 3', () {
      var users = [
        (name: "Reza", roles: <String>["Superadmin"]),
        (name: "Amin", roles: <String>["Guest", "Reseption"]),
        (name: "Nima", roles: <String>[]),
      ];
      final result = users.selectMany((user) => user.roles, (user, role) => (user.name, role));
      expect(result, [
        ('Reza', 'Superadmin'),
        ('Amin', 'Guest'),
        ('Amin', 'Reseption'),
      ]);
    });
  });

  group('joinWhere', () {
    test('test 1', () {
      var users = [
        (name: "Reza", roles: ["Superadmin"]),
        (name: "Amin", roles: ["Guest", "Reseption"]),
        (name: "Nima", roles: ["Nurse", "Guest"]),
      ];

      var roles = ['Guest'];

      final result = users.joinWhere(roles, (user, role) => user.roles.contains(role), (user, role) => (user.name));
      expect(result, [
        'Amin',
        'Nima',
      ]);
    });

    test('test 2', () {
      var users = [
        (name: "Reza", roles: ["Superadmin"]),
        (name: "Amin", roles: ["Guest", "Reseption"]),
        (name: "Nima", roles: ["Nurse", "Guest"]),
      ];

      var roles = ['Guest'];

      final result = users.joinWhere(roles, (user, role) => user.roles.contains(role));
      print(result);

      /// TODO: fix this
      // expect(
      //   result.first,
      //   (name: 'Amin', roles: ['Guest', 'Reseption']),
      // );
    });
  });

  group('passengger', () {
    test('test 1', () {
      var user = (name: "Reza", isAnonymous: true, isDisabled: true);
      final result = switch (user) {
        (name: _, isAnonymous: true, isDisabled: true) => 'Anonymous',
        (name: _, isAnonymous: false, isDisabled: true) => 'Disabled',
        (name: _, isAnonymous: false, isDisabled: false) => 'Active',
        _ => 'empty'
      };
      expect(result, 'Anonymous');
    });
  });

  group('String extensions', () {
    test('reverse', () {
      const value = "Hello World";
      final result = value.reversed;
      expect(result, 'dlroW olleH');
    });
  });

  group('concat list with sub list', () {
    test('first', () {
      final first = [
        (id: 1, selectedAdditional: [(code: 'FOLDED_BIKE', quantity: 1)]),
        (id: 2, selectedAdditional: [(code: 'FOLDED_BIKE', quantity: 1), (code: 'HEAVELY_LUGGAGE', quantity: 1)]),
      ];

      final second = [
        (id: 1, selectedAdditional: [(code: 'OUIGO_FLEX', quantity: 1)])
      ];

      final result = [
        ...first.expand((e) => e.selectedAdditional.map((s) => (key: e.id, value: s))),
        ...second.expand((e) => e.selectedAdditional.map((s) => (key: e.id, value: s)))
      ].groupListsBy((e) => e.key).entries.map((e) => (id: e.key, selectedAdditionalServices: e.value));

      expect(result.countBy((e) => e.id == 1), 1);
    });
  });

  group('AddOrReplace', () {
    test('test 1', () {
      final items = [1, 2, 3, 4];
      // ignore: cascade_invocations
      items
        ..addOrReplace(0, 5)
        ..addOrReplace(1, 6);

      expect(items, [5, 6, 3, 4]);
    });
  });

  group('toMap', () {
    test('test', () {
      final items = [
        (DateTime(2025, 1, 10), 150),
        (DateTime(2025, 1, 10), 200),
        (DateTime(2025, 3, 6), 150),
        (DateTime(2025, 5, 7), 200),
        (DateTime(2024, 1, 10), 150),
        (DateTime(2024, 1, 10), 200),
        (DateTime(2024, 3, 6), 150),
        (DateTime(2024, 5, 7), 200),
      ];

      final result = items.toMap(key: (item) => item.$1, value: (item) => item.map((e) => e.$2));

      print(result);
    });

    test('test 1', () {
      final items = [
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
        (id: 3, name: 'C'),
        (id: 1, name: 'A'),
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
      ];

      final result = items.toMap(key: (e) => e.id, value: (e) => e.length);
      expect(result.entries.first.key, 1);
      expect(result.entries.first.value, 3);
      expect(result.entries.last.key, 3);
      expect(result.entries.last.value, 1);
    });

    test('test 1', () {
      final items = [
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
        (id: 3, name: 'C'),
        (id: 1, name: 'A'),
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
      ];

      final result = items.countBy((e) => e.id);
      expect(result.entries.first.key, 1);
      expect(result.entries.first.value, 3);
      expect(result.entries.last.key, 3);
      expect(result.entries.last.value, 1);
    });

    test('test 2', () {
      final items = [
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
        (id: 3, name: 'C'),
        (id: 1, name: 'A'),
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
      ];

      final result = items.toMap(key: (e) => e.id);
      expect(result.entries.first.key, 1);
      expect(result.entries.first.value.length, 3);
      expect(result.entries.last.key, 3);
      expect(result.entries.last.value.length, 1);
    });
  });

  group('toMapCount', () {
    test('test 1', () {
      final items = [
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
        (id: 3, name: 'C'),
        (id: 1, name: 'A'),
        (id: 1, name: 'A'),
        (id: 2, name: 'B'),
      ];

      final result = items.toMapCount(key: (e) => e.id);
      expect(result.entries.first.key, 1);
      expect(result.entries.first.value, 3);
      expect(result.entries.last.key, 3);
      expect(result.entries.last.value, 1);
    });

    test('Test for empty input iterable', () {
      var emptyResult = [].toMapCount<int>(key: (element) => element);
      expect(emptyResult, <int, int>{});
    });

    test('Test for counting occurrences of elements', () {
      var inputList = [1, 2, 2, 3, 3, 3];
      var expectedMap = {1: 1, 2: 2, 3: 3};
      var result = inputList.toMapCount<int>(key: (element) => element);
      expect(result, expectedMap);
    });
  });

  group('mapWhen', () {
    test('test mapWhen 1', () {
      final items = generateSequence(0, (e) => e + 1).take(10);
      final result = items.mapWhen(predicate: (e) => e % 2 == 0, replacement: (e) => 0).toList();
      expect(result.sum, 25);
    });

    test('test mapWhen 2', () {
      final items = generateSequence(0, (e) => e + 1).take(10);
      final result = items.mapWhen(predicate: (e) => e % 2 == 0, replacement: (e) => 0).toList();
      expect(result.sum, 25);
    });
  });

  group('plus', () {
    test('plus 1', () {
      final result = "test".plus(element: "1");
      expect(result, "test1");
    });

    test('<< 1', () {
      final result = "test" << "1";
      expect(result, "test1");
    });

    test('plus 2', () {
      const element = "1";
      const result = "test$element";
      expect(result, "test1");
    });

    test('<< 2', () {
      // return timer.title
      //   .plus(element: ' ')
      //   .plus(element: timer.day.toString())
      //   .plus(element: ' ')
      //   .plus(element: timer.dayUnit)
      //   .plus(element: ' ')
      //   .plus(element: timer.hour.toString())
      //   .plus(element: ' ')
      //   .plus(element: timer.hourUnit)
      //   .plus(element: ' ')
      //   .plus(element: timer.minute.toString())
      //   .plus(element: ' ')
      //   .plus(element: timer.minuteUnit);

      final current = DateTime.now();

      final result = "Titre" <<
          " " <<
          "Le" <<
          " " <<
          current.day.toString() <<
          " " <<
          "jour" <<
          " " <<
          current.hour.toString() <<
          " " <<
          current.minute.toString();
      expect(result, "Titre Le 1 jour 9 18");
    });
  });

  group('NullableExtensions1', () {
    test('test 1', () {
      final result = 1.takeIf((e) => e > 0);
      expect(result.success, true);
      expect(result.value, 1);
    });

    test('test 2', () {
      final result = 1.takeIf((e) => e < 0);
      expect(result.success, false);
      expect(result.value, 1);
    });

    test('test 3', () {
      final result = 1.takeIf((e) => e == 0);
      expect(result.success, false);
      expect(result.value, 1);
    });

    test('test 4', () {
      final result = 1.takeIf((e) => e > 0).takeIf((e) => e == 1);
      expect(result.success, true);
      expect(result.value, 1);
    });

    test('test 4', () {
      final result = 1.takeIf((e) => e == 0).takeIf((e) => e == 1);
      expect(result.success, false);
      expect(result.value, 1);
    });
  });

  group('removeDiacritics', () {
    test('test 1', () {
      final result = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž'.removeDiacritics;
      expect(result, 'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz');
    });
    test('test 2', () {
      final result = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž'.removeDiacritics;
      expect(result, 'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz');
    });

    test('test 3', () {
      final result = 'Äbonnément'.removeDiacritics;
      expect(result, 'Abonnement');
    });
  });

  group('mapNotNull vs joinWhere', () {
    final days = ['THURSDAY', 'FRIDAY'];

    test('test mapNotNull', () {
      final result =
          days.mapNotNull((day) => FavoriteItineraryAlertPlanningDays.values.firstWhereOrNull((e) => e.name == day));
      print(result);
      expect(result, [FavoriteItineraryAlertPlanningDays.THURSDAY, FavoriteItineraryAlertPlanningDays.FRIDAY]);
    });

    test('test joinWhere', () {
      final result =
          days.joinWhere(FavoriteItineraryAlertPlanningDays.values, (day, e) => e.name == day, (day, e) => e);
      print(result);
      expect(result, [FavoriteItineraryAlertPlanningDays.THURSDAY, FavoriteItineraryAlertPlanningDays.FRIDAY]);
    });

    test('test joinWhere', () {
      final a = [1, 2, 3];

      final b = [2, 3, 4];
      final result = a.joinWhere(b, (x, y) => x == y, (x, y) => x + y);
      expect(result, [4, 6]);
    });
  });

  group('map extensions', () {
    test('test map', () {
      final values = {1: "1", 2: "2"};

      final result = values[10] ?? "None";
      expect(result, "None");
    });

    test('test getOrDefault', () {
      final result = {1: "1", 2: "2"}.getOrDefault(99, () => "None");
      expect(result.$2, "None");
    });

    test('test operator +', () {
      final result = {1: "1", 2: "2"} + {3: "3", 4: "4"};
      expect(result.length, 4);
    });

    test('test operator -', () {
      final result = {1: "1", 2: "2"} - {3: "3", 1: "1"};
      expect(result.length, 1);
    });
  });
}

enum FavoriteItineraryAlertPlanningDays {
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY,
}

enum TravelerIcon { bike, pet }

class TravelerFare {
  final TravelerIcon icon;

  TravelerFare({required this.icon});
}
