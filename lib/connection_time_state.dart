import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_time_state.freezed.dart';

@freezed
sealed class ConnectionTimeState with _$ConnectionTimeState {
  const factory ConnectionTimeState.initial({required int minValue, int? initialValue}) = ConnectionTimeStateInitial;
  const factory ConnectionTimeState.change(int selectedValue) = ConnectionTimeStateChange;
  const factory ConnectionTimeState.notify() = ConnectionTimeStateNotify;
  const factory ConnectionTimeState.reset() = ConnectionTimeStateReset;
}

@freezed
sealed class DiscountCardsState with _$DiscountCardsState {
  const factory DiscountCardsState.initial({
    Set<String>? selectedCards,
    required List<String> availableDiscountCards,
    required List<String> initiallySelectedCards,
    DateTime? birthDate,
  }) = DiscountCardsStateInitial;
  const factory DiscountCardsState.completed({DateTime? birthDate, Set<String>? selectedCards}) =
      DiscountCardsStateCompleted;
}

@freezed
sealed class User with _$User {
  const factory User({
    required String firstName,
    required String lastName,
    required String email,
  }) = _User;
}

@freezed
sealed class CyclesAddingRulesState with _$CyclesAddingRulesState {
  const factory CyclesAddingRulesState.initial() = CyclesAddingRulesStateInitial;
  const factory CyclesAddingRulesState.change(int selectedValue) = CyclesAddingRulesStateChange;
}

@freezed
sealed class PreviousNextProposalsState with _$PreviousNextProposalsState {
  const factory PreviousNextProposalsState.initial() = PreviousNextProposalsStateInitial;
  const factory PreviousNextProposalsState.loading() = PreviousNextProposalsStateLoading;
  const factory PreviousNextProposalsState.failure(String error) = PreviousNextProposalsStateFailure;
}
