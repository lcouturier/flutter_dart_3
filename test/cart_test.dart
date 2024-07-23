import 'package:flutter_dart_3/cart.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test version 1', () {
    final cart = Cart(
      items: [
        CartItem(id: '1', travelers: [
          Traveler(name: 'John'),
          Traveler(name: 'Jane'),
        ]),
        CartItem(id: '2', travelers: [
          Traveler(name: 'John'),
          Traveler(name: 'Jane'),
        ]),
      ],
    );

    final result = cart.contactInformationTravelers.toList();
    expect(result[0].index, 0);
    expect(result[0].displayIndex, 0);
    expect(result[0].cartId, '1');

    expect(result[1].index, 1);
    expect(result[1].displayIndex, 1);
    expect(result[1].cartId, '1');

    expect(result[2].index, 2);
    expect(result[2].displayIndex, 0);
    expect(result[2].cartId, '2');

    expect(result[3].index, 3);
    expect(result[3].displayIndex, 1);
    expect(result[3].cartId, '2');
  });

  test('test version 2', () {
    final cart = Cart(
      items: [
        CartItem(id: '1', travelers: [
          Traveler(name: 'John'),
          Traveler(name: 'Jane'),
        ]),
        CartItem(id: '2', travelers: [
          Traveler(name: 'John'),
          Traveler(name: 'Jane'),
        ]),
      ],
    );

    final result = cart.contactInformationTravelersV2.toList(growable: false);
    expect(result[0].index, 0);
    expect(result[0].displayIndex, 0);
    expect(result[0].cartId, '1');

    expect(result[1].index, 1);
    expect(result[1].displayIndex, 1);
    expect(result[1].cartId, '1');

    expect(result[2].index, 2);
    expect(result[2].displayIndex, 0);
    expect(result[2].cartId, '2');

    expect(result[3].index, 3);
    expect(result[3].displayIndex, 1);
    expect(result[3].cartId, '2');
  });

  test(
    'map 1',
    () {
      final items = ["a", "b", "c", "a", "b", "c", "d", "a"];
      final result = {for (var item in items) item: items.where((e) => e == item).length};
      expect(result, {
        "a": 3,
        "b": 2,
        "c": 2,
        "d": 1,
      });
    },
  );

  test(
    'map empty',
    () {
      final items = [];
      final result = {for (var item in items) item: items.where((e) => e == item).length};
      expect(result, {});
    },
  );
}
