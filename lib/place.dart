class SearchTripState {
  final SearchTripParams searchParams;

  SearchTripState({required this.searchParams});

  String get journey {
    return switch ((searchParams.origin?.place.label, searchParams.destination?.place.label)) {
      (null, null) => '',
      (null, _) => searchParams.destination!.place.label,
      (_, null) => searchParams.origin!.place.label,
      _ => '${searchParams.origin?.place.label} - ${searchParams.destination?.place.label}',
    };
  }
}

class SearchTripParams {
  final AutoCompletePlace? origin;
  final AutoCompletePlace? destination;

  SearchTripParams({this.origin, this.destination});
}

class AutoCompletePlace {
  final Place place;

  AutoCompletePlace({required this.place});
}

class Place {
  final String label;

  Place({required this.label});
}
