import 'package:flutter/material.dart';

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

typedef ChildWidgetBuilder = Widget Function(BuildContext context, Widget child);

class ConditionalDecoratorWidget extends StatelessWidget {
  const ConditionalDecoratorWidget({
    super.key,
    required this.condition,
    required this.builder,
    required this.child,
  });

  final bool condition;
  final ChildWidgetBuilder builder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return condition ? builder(context, child) : child;
  }
}
