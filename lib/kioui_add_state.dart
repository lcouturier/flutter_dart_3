import 'package:freezed_annotation/freezed_annotation.dart';
part 'kioui_add_state.freezed.dart';

@freezed
sealed class KiOuiAddState with _$KiOuiAddState {
  const factory KiOuiAddState.initial({required bool kiOuiEnabled}) = KiOuiAddInitial;
  const factory KiOuiAddState.validate({String? promoCode}) = KiOuiValidate;
}
