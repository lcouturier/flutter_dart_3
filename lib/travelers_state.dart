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

enum SearchTripStatus {
  loading,
  failure,
  shopAskInfoSuccess,
  shopShowResultsSuccess,
  doorToDoorDisplaySuccess,
  functionalFailure,
}

class SearchTripParams {
  final bool wishBike;
  final bool accountFceCodeEnabled;
  final bool trainExpected;

  SearchTripParams(this.wishBike, this.accountFceCodeEnabled, this.trainExpected);

  SearchTripParams copyWith({bool? wishBike, bool? accountFceCodeEnabled, bool? trainExpected}) {
    return SearchTripParams(
      wishBike ?? this.wishBike,
      accountFceCodeEnabled ?? this.accountFceCodeEnabled,
      trainExpected ?? this.trainExpected,
    );
  }
}

class SearchTripState {
  final SearchTripStatus status;
  final SearchTripParams searchParams;

  SearchTripState(this.status, this.searchParams);

  SearchTripState copyWith({SearchTripStatus? status, SearchTripParams? searchParams}) {
    return SearchTripState(
      status ?? this.status,
      searchParams ?? this.searchParams,
    );
  }
}
