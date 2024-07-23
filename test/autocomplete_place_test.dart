import 'package:flutter_dart_3/place.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('journey', () {
    test('test journey Paris - Lyon', () {
      final searchParams = SearchTripParams(
        origin: AutoCompletePlace(place: Place(label: 'Paris')),
        destination: AutoCompletePlace(place: Place(label: 'Lyon')),
      );
      final searchTripState = SearchTripState(searchParams: searchParams);
      expect(searchTripState.journey, 'Paris - Lyon');
    });

    test('test journey Paris', () {
      final searchParams = SearchTripParams(
        origin: AutoCompletePlace(place: Place(label: 'Paris')),
      );
      final searchTripState = SearchTripState(searchParams: searchParams);
      expect(searchTripState.journey, 'Paris');
    });

    test('test journey Lyon', () {
      final searchParams = SearchTripParams(
        destination: AutoCompletePlace(place: Place(label: 'Lyon')),
      );
      final searchTripState = SearchTripState(searchParams: searchParams);
      expect(searchTripState.journey, 'Lyon');
    });

    test('test empty', () {
      final searchParams = SearchTripParams();
      final searchTripState = SearchTripState(searchParams: searchParams);
      expect(searchTripState.journey, '');
    });
  });
}
