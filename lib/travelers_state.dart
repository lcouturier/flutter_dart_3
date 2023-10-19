// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travelers_state.freezed.dart';

@freezed
sealed class TravelersState with _$TravelersState {
  const factory TravelersState.initial(List<String> items) = Initial;
  const factory TravelersState.didUpdate(List<String> items) = DidUpdate;
  const factory TravelersState.invalid(List<String> items, String description) = Invalid;
  const factory TravelersState.complete(TripsAndTravelersSelection trips) = Complete;
}

class TripsAndTravelersSelection {
  final String travelId;
  final List<String> travelers;

  TripsAndTravelersSelection({required this.travelId, required this.travelers});
}
