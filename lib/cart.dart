class Cart {
  final List<CartItem> items;

  Cart({required this.items});
}

class CartItem {
  final String id;
  final List<Traveler> travelers;

  CartItem({required this.id, required this.travelers});
}

class Traveler {
  final String name;

  Traveler({required this.name});
}

class ContactInformationTraveler {
  final String cartId;
  final int index;
  final int displayIndex;
  final Traveler traveler;

  ContactInformationTraveler(
      {required this.cartId, required this.index, required this.displayIndex, required this.traveler});
}

extension CartExtensions on Cart {
  Iterable<ContactInformationTraveler> get contactInformationTravelers sync* {
    var index = 0;
    for (var item in items) {
      yield* item.travelers.indexed.map(
        (e) => ContactInformationTraveler(
          cartId: item.id,
          index: index++,
          displayIndex: e.$1,
          traveler: e.$2,
        ),
      );
    }
  }

  Iterable<ContactInformationTraveler> get contactInformationTravelersV2 {
    return items
        .selectManyIndexed(
          (item) => item.travelers.indexed,
          (index, item, traveler) => ContactInformationTraveler(
            cartId: item.id,
            index: index,
            displayIndex: traveler.$1,
            traveler: traveler.$2,
          ),
        )
        .cast<ContactInformationTraveler>(); // Add this line to cast the result;
  }
}

extension CartItemExtension<R, E, T> on Iterable<T> {
  Iterable<(int, R)> selectManyIndexedType(
    Iterable<E> Function(T) collectionSelector,
    R Function(T, E) selector,
  ) sync* {
    var index = 0;
    for (var item in this) {
      for (var subItem in collectionSelector(item)) {
        yield (index++, selector(item, subItem));
      }
    }
  }
}

extension ExtensionsCartItem<R, E, T> on Iterable<E> {
  Iterable<R> selectManyIndexed(
    Iterable<T> Function(E) collectionSelector,
    R Function(int, E, T) selector,
  ) sync* {
    var index = 0;
    for (var item in this) {
      for (var subItem in collectionSelector(item)) {
        yield selector(index++, item, subItem);
      }
    }
  }
}
