// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionTimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int minValue, int? initialValue) initial,
    required TResult Function(int selectedValue) change,
    required TResult Function() notify,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int minValue, int? initialValue)? initial,
    TResult? Function(int selectedValue)? change,
    TResult? Function()? notify,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int minValue, int? initialValue)? initial,
    TResult Function(int selectedValue)? change,
    TResult Function()? notify,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeStateInitial value) initial,
    required TResult Function(ConnectionTimeStateChange value) change,
    required TResult Function(ConnectionTimeStateNotify value) notify,
    required TResult Function(ConnectionTimeStateReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeStateInitial value)? initial,
    TResult? Function(ConnectionTimeStateChange value)? change,
    TResult? Function(ConnectionTimeStateNotify value)? notify,
    TResult? Function(ConnectionTimeStateReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeStateInitial value)? initial,
    TResult Function(ConnectionTimeStateChange value)? change,
    TResult Function(ConnectionTimeStateNotify value)? notify,
    TResult Function(ConnectionTimeStateReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionTimeStateCopyWith<$Res> {
  factory $ConnectionTimeStateCopyWith(
          ConnectionTimeState value, $Res Function(ConnectionTimeState) then) =
      _$ConnectionTimeStateCopyWithImpl<$Res, ConnectionTimeState>;
}

/// @nodoc
class _$ConnectionTimeStateCopyWithImpl<$Res, $Val extends ConnectionTimeState>
    implements $ConnectionTimeStateCopyWith<$Res> {
  _$ConnectionTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectionTimeStateInitialImplCopyWith<$Res> {
  factory _$$ConnectionTimeStateInitialImplCopyWith(
          _$ConnectionTimeStateInitialImpl value,
          $Res Function(_$ConnectionTimeStateInitialImpl) then) =
      __$$ConnectionTimeStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int minValue, int? initialValue});
}

/// @nodoc
class __$$ConnectionTimeStateInitialImplCopyWithImpl<$Res>
    extends _$ConnectionTimeStateCopyWithImpl<$Res,
        _$ConnectionTimeStateInitialImpl>
    implements _$$ConnectionTimeStateInitialImplCopyWith<$Res> {
  __$$ConnectionTimeStateInitialImplCopyWithImpl(
      _$ConnectionTimeStateInitialImpl _value,
      $Res Function(_$ConnectionTimeStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minValue = null,
    Object? initialValue = freezed,
  }) {
    return _then(_$ConnectionTimeStateInitialImpl(
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeStateInitialImpl implements ConnectionTimeStateInitial {
  const _$ConnectionTimeStateInitialImpl(
      {required this.minValue, this.initialValue});

  @override
  final int minValue;
  @override
  final int? initialValue;

  @override
  String toString() {
    return 'ConnectionTimeState.initial(minValue: $minValue, initialValue: $initialValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeStateInitialImpl &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minValue, initialValue);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeStateInitialImplCopyWith<_$ConnectionTimeStateInitialImpl>
      get copyWith => __$$ConnectionTimeStateInitialImplCopyWithImpl<
          _$ConnectionTimeStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int minValue, int? initialValue) initial,
    required TResult Function(int selectedValue) change,
    required TResult Function() notify,
    required TResult Function() reset,
  }) {
    return initial(minValue, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int minValue, int? initialValue)? initial,
    TResult? Function(int selectedValue)? change,
    TResult? Function()? notify,
    TResult? Function()? reset,
  }) {
    return initial?.call(minValue, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int minValue, int? initialValue)? initial,
    TResult Function(int selectedValue)? change,
    TResult Function()? notify,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(minValue, initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeStateInitial value) initial,
    required TResult Function(ConnectionTimeStateChange value) change,
    required TResult Function(ConnectionTimeStateNotify value) notify,
    required TResult Function(ConnectionTimeStateReset value) reset,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeStateInitial value)? initial,
    TResult? Function(ConnectionTimeStateChange value)? change,
    TResult? Function(ConnectionTimeStateNotify value)? notify,
    TResult? Function(ConnectionTimeStateReset value)? reset,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeStateInitial value)? initial,
    TResult Function(ConnectionTimeStateChange value)? change,
    TResult Function(ConnectionTimeStateNotify value)? notify,
    TResult Function(ConnectionTimeStateReset value)? reset,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeStateInitial implements ConnectionTimeState {
  const factory ConnectionTimeStateInitial(
      {required final int minValue,
      final int? initialValue}) = _$ConnectionTimeStateInitialImpl;

  int get minValue;
  int? get initialValue;

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionTimeStateInitialImplCopyWith<_$ConnectionTimeStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeStateChangeImplCopyWith<$Res> {
  factory _$$ConnectionTimeStateChangeImplCopyWith(
          _$ConnectionTimeStateChangeImpl value,
          $Res Function(_$ConnectionTimeStateChangeImpl) then) =
      __$$ConnectionTimeStateChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedValue});
}

/// @nodoc
class __$$ConnectionTimeStateChangeImplCopyWithImpl<$Res>
    extends _$ConnectionTimeStateCopyWithImpl<$Res,
        _$ConnectionTimeStateChangeImpl>
    implements _$$ConnectionTimeStateChangeImplCopyWith<$Res> {
  __$$ConnectionTimeStateChangeImplCopyWithImpl(
      _$ConnectionTimeStateChangeImpl _value,
      $Res Function(_$ConnectionTimeStateChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$ConnectionTimeStateChangeImpl(
      null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeStateChangeImpl implements ConnectionTimeStateChange {
  const _$ConnectionTimeStateChangeImpl(this.selectedValue);

  @override
  final int selectedValue;

  @override
  String toString() {
    return 'ConnectionTimeState.change(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeStateChangeImpl &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeStateChangeImplCopyWith<_$ConnectionTimeStateChangeImpl>
      get copyWith => __$$ConnectionTimeStateChangeImplCopyWithImpl<
          _$ConnectionTimeStateChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int minValue, int? initialValue) initial,
    required TResult Function(int selectedValue) change,
    required TResult Function() notify,
    required TResult Function() reset,
  }) {
    return change(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int minValue, int? initialValue)? initial,
    TResult? Function(int selectedValue)? change,
    TResult? Function()? notify,
    TResult? Function()? reset,
  }) {
    return change?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int minValue, int? initialValue)? initial,
    TResult Function(int selectedValue)? change,
    TResult Function()? notify,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeStateInitial value) initial,
    required TResult Function(ConnectionTimeStateChange value) change,
    required TResult Function(ConnectionTimeStateNotify value) notify,
    required TResult Function(ConnectionTimeStateReset value) reset,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeStateInitial value)? initial,
    TResult? Function(ConnectionTimeStateChange value)? change,
    TResult? Function(ConnectionTimeStateNotify value)? notify,
    TResult? Function(ConnectionTimeStateReset value)? reset,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeStateInitial value)? initial,
    TResult Function(ConnectionTimeStateChange value)? change,
    TResult Function(ConnectionTimeStateNotify value)? notify,
    TResult Function(ConnectionTimeStateReset value)? reset,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeStateChange implements ConnectionTimeState {
  const factory ConnectionTimeStateChange(final int selectedValue) =
      _$ConnectionTimeStateChangeImpl;

  int get selectedValue;

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionTimeStateChangeImplCopyWith<_$ConnectionTimeStateChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeStateNotifyImplCopyWith<$Res> {
  factory _$$ConnectionTimeStateNotifyImplCopyWith(
          _$ConnectionTimeStateNotifyImpl value,
          $Res Function(_$ConnectionTimeStateNotifyImpl) then) =
      __$$ConnectionTimeStateNotifyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionTimeStateNotifyImplCopyWithImpl<$Res>
    extends _$ConnectionTimeStateCopyWithImpl<$Res,
        _$ConnectionTimeStateNotifyImpl>
    implements _$$ConnectionTimeStateNotifyImplCopyWith<$Res> {
  __$$ConnectionTimeStateNotifyImplCopyWithImpl(
      _$ConnectionTimeStateNotifyImpl _value,
      $Res Function(_$ConnectionTimeStateNotifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectionTimeStateNotifyImpl implements ConnectionTimeStateNotify {
  const _$ConnectionTimeStateNotifyImpl();

  @override
  String toString() {
    return 'ConnectionTimeState.notify()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeStateNotifyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int minValue, int? initialValue) initial,
    required TResult Function(int selectedValue) change,
    required TResult Function() notify,
    required TResult Function() reset,
  }) {
    return notify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int minValue, int? initialValue)? initial,
    TResult? Function(int selectedValue)? change,
    TResult? Function()? notify,
    TResult? Function()? reset,
  }) {
    return notify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int minValue, int? initialValue)? initial,
    TResult Function(int selectedValue)? change,
    TResult Function()? notify,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeStateInitial value) initial,
    required TResult Function(ConnectionTimeStateChange value) change,
    required TResult Function(ConnectionTimeStateNotify value) notify,
    required TResult Function(ConnectionTimeStateReset value) reset,
  }) {
    return notify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeStateInitial value)? initial,
    TResult? Function(ConnectionTimeStateChange value)? change,
    TResult? Function(ConnectionTimeStateNotify value)? notify,
    TResult? Function(ConnectionTimeStateReset value)? reset,
  }) {
    return notify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeStateInitial value)? initial,
    TResult Function(ConnectionTimeStateChange value)? change,
    TResult Function(ConnectionTimeStateNotify value)? notify,
    TResult Function(ConnectionTimeStateReset value)? reset,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeStateNotify implements ConnectionTimeState {
  const factory ConnectionTimeStateNotify() = _$ConnectionTimeStateNotifyImpl;
}

/// @nodoc
abstract class _$$ConnectionTimeStateResetImplCopyWith<$Res> {
  factory _$$ConnectionTimeStateResetImplCopyWith(
          _$ConnectionTimeStateResetImpl value,
          $Res Function(_$ConnectionTimeStateResetImpl) then) =
      __$$ConnectionTimeStateResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionTimeStateResetImplCopyWithImpl<$Res>
    extends _$ConnectionTimeStateCopyWithImpl<$Res,
        _$ConnectionTimeStateResetImpl>
    implements _$$ConnectionTimeStateResetImplCopyWith<$Res> {
  __$$ConnectionTimeStateResetImplCopyWithImpl(
      _$ConnectionTimeStateResetImpl _value,
      $Res Function(_$ConnectionTimeStateResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionTimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectionTimeStateResetImpl implements ConnectionTimeStateReset {
  const _$ConnectionTimeStateResetImpl();

  @override
  String toString() {
    return 'ConnectionTimeState.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeStateResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int minValue, int? initialValue) initial,
    required TResult Function(int selectedValue) change,
    required TResult Function() notify,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int minValue, int? initialValue)? initial,
    TResult? Function(int selectedValue)? change,
    TResult? Function()? notify,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int minValue, int? initialValue)? initial,
    TResult Function(int selectedValue)? change,
    TResult Function()? notify,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionTimeStateInitial value) initial,
    required TResult Function(ConnectionTimeStateChange value) change,
    required TResult Function(ConnectionTimeStateNotify value) notify,
    required TResult Function(ConnectionTimeStateReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionTimeStateInitial value)? initial,
    TResult? Function(ConnectionTimeStateChange value)? change,
    TResult? Function(ConnectionTimeStateNotify value)? notify,
    TResult? Function(ConnectionTimeStateReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionTimeStateInitial value)? initial,
    TResult Function(ConnectionTimeStateChange value)? change,
    TResult Function(ConnectionTimeStateNotify value)? notify,
    TResult Function(ConnectionTimeStateReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeStateReset implements ConnectionTimeState {
  const factory ConnectionTimeStateReset() = _$ConnectionTimeStateResetImpl;
}

/// @nodoc
mixin _$DiscountCardsState {
  Set<String>? get selectedCards => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)
        initial,
    required TResult Function(DateTime? birthDate, Set<String>? selectedCards)
        completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult? Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscountCardsStateInitial value) initial,
    required TResult Function(DiscountCardsStateCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountCardsStateInitial value)? initial,
    TResult? Function(DiscountCardsStateCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountCardsStateInitial value)? initial,
    TResult Function(DiscountCardsStateCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCardsStateCopyWith<DiscountCardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCardsStateCopyWith<$Res> {
  factory $DiscountCardsStateCopyWith(
          DiscountCardsState value, $Res Function(DiscountCardsState) then) =
      _$DiscountCardsStateCopyWithImpl<$Res, DiscountCardsState>;
  @useResult
  $Res call({Set<String>? selectedCards, DateTime? birthDate});
}

/// @nodoc
class _$DiscountCardsStateCopyWithImpl<$Res, $Val extends DiscountCardsState>
    implements $DiscountCardsStateCopyWith<$Res> {
  _$DiscountCardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCards = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCards: freezed == selectedCards
          ? _value.selectedCards
          : selectedCards // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountCardsStateInitialImplCopyWith<$Res>
    implements $DiscountCardsStateCopyWith<$Res> {
  factory _$$DiscountCardsStateInitialImplCopyWith(
          _$DiscountCardsStateInitialImpl value,
          $Res Function(_$DiscountCardsStateInitialImpl) then) =
      __$$DiscountCardsStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<String>? selectedCards,
      List<String> availableDiscountCards,
      List<String> initiallySelectedCards,
      DateTime? birthDate});
}

/// @nodoc
class __$$DiscountCardsStateInitialImplCopyWithImpl<$Res>
    extends _$DiscountCardsStateCopyWithImpl<$Res,
        _$DiscountCardsStateInitialImpl>
    implements _$$DiscountCardsStateInitialImplCopyWith<$Res> {
  __$$DiscountCardsStateInitialImplCopyWithImpl(
      _$DiscountCardsStateInitialImpl _value,
      $Res Function(_$DiscountCardsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCards = freezed,
    Object? availableDiscountCards = null,
    Object? initiallySelectedCards = null,
    Object? birthDate = freezed,
  }) {
    return _then(_$DiscountCardsStateInitialImpl(
      selectedCards: freezed == selectedCards
          ? _value._selectedCards
          : selectedCards // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      availableDiscountCards: null == availableDiscountCards
          ? _value._availableDiscountCards
          : availableDiscountCards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      initiallySelectedCards: null == initiallySelectedCards
          ? _value._initiallySelectedCards
          : initiallySelectedCards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DiscountCardsStateInitialImpl implements DiscountCardsStateInitial {
  const _$DiscountCardsStateInitialImpl(
      {final Set<String>? selectedCards,
      required final List<String> availableDiscountCards,
      required final List<String> initiallySelectedCards,
      this.birthDate})
      : _selectedCards = selectedCards,
        _availableDiscountCards = availableDiscountCards,
        _initiallySelectedCards = initiallySelectedCards;

  final Set<String>? _selectedCards;
  @override
  Set<String>? get selectedCards {
    final value = _selectedCards;
    if (value == null) return null;
    if (_selectedCards is EqualUnmodifiableSetView) return _selectedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  final List<String> _availableDiscountCards;
  @override
  List<String> get availableDiscountCards {
    if (_availableDiscountCards is EqualUnmodifiableListView)
      return _availableDiscountCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDiscountCards);
  }

  final List<String> _initiallySelectedCards;
  @override
  List<String> get initiallySelectedCards {
    if (_initiallySelectedCards is EqualUnmodifiableListView)
      return _initiallySelectedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initiallySelectedCards);
  }

  @override
  final DateTime? birthDate;

  @override
  String toString() {
    return 'DiscountCardsState.initial(selectedCards: $selectedCards, availableDiscountCards: $availableDiscountCards, initiallySelectedCards: $initiallySelectedCards, birthDate: $birthDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCardsStateInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedCards, _selectedCards) &&
            const DeepCollectionEquality().equals(
                other._availableDiscountCards, _availableDiscountCards) &&
            const DeepCollectionEquality().equals(
                other._initiallySelectedCards, _initiallySelectedCards) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedCards),
      const DeepCollectionEquality().hash(_availableDiscountCards),
      const DeepCollectionEquality().hash(_initiallySelectedCards),
      birthDate);

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCardsStateInitialImplCopyWith<_$DiscountCardsStateInitialImpl>
      get copyWith => __$$DiscountCardsStateInitialImplCopyWithImpl<
          _$DiscountCardsStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)
        initial,
    required TResult Function(DateTime? birthDate, Set<String>? selectedCards)
        completed,
  }) {
    return initial(selectedCards, availableDiscountCards,
        initiallySelectedCards, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult? Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
  }) {
    return initial?.call(selectedCards, availableDiscountCards,
        initiallySelectedCards, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedCards, availableDiscountCards,
          initiallySelectedCards, birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscountCardsStateInitial value) initial,
    required TResult Function(DiscountCardsStateCompleted value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountCardsStateInitial value)? initial,
    TResult? Function(DiscountCardsStateCompleted value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountCardsStateInitial value)? initial,
    TResult Function(DiscountCardsStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DiscountCardsStateInitial implements DiscountCardsState {
  const factory DiscountCardsStateInitial(
      {final Set<String>? selectedCards,
      required final List<String> availableDiscountCards,
      required final List<String> initiallySelectedCards,
      final DateTime? birthDate}) = _$DiscountCardsStateInitialImpl;

  @override
  Set<String>? get selectedCards;
  List<String> get availableDiscountCards;
  List<String> get initiallySelectedCards;
  @override
  DateTime? get birthDate;

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCardsStateInitialImplCopyWith<_$DiscountCardsStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscountCardsStateCompletedImplCopyWith<$Res>
    implements $DiscountCardsStateCopyWith<$Res> {
  factory _$$DiscountCardsStateCompletedImplCopyWith(
          _$DiscountCardsStateCompletedImpl value,
          $Res Function(_$DiscountCardsStateCompletedImpl) then) =
      __$$DiscountCardsStateCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? birthDate, Set<String>? selectedCards});
}

/// @nodoc
class __$$DiscountCardsStateCompletedImplCopyWithImpl<$Res>
    extends _$DiscountCardsStateCopyWithImpl<$Res,
        _$DiscountCardsStateCompletedImpl>
    implements _$$DiscountCardsStateCompletedImplCopyWith<$Res> {
  __$$DiscountCardsStateCompletedImplCopyWithImpl(
      _$DiscountCardsStateCompletedImpl _value,
      $Res Function(_$DiscountCardsStateCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? selectedCards = freezed,
  }) {
    return _then(_$DiscountCardsStateCompletedImpl(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedCards: freezed == selectedCards
          ? _value._selectedCards
          : selectedCards // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ));
  }
}

/// @nodoc

class _$DiscountCardsStateCompletedImpl implements DiscountCardsStateCompleted {
  const _$DiscountCardsStateCompletedImpl(
      {this.birthDate, final Set<String>? selectedCards})
      : _selectedCards = selectedCards;

  @override
  final DateTime? birthDate;
  final Set<String>? _selectedCards;
  @override
  Set<String>? get selectedCards {
    final value = _selectedCards;
    if (value == null) return null;
    if (_selectedCards is EqualUnmodifiableSetView) return _selectedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'DiscountCardsState.completed(birthDate: $birthDate, selectedCards: $selectedCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCardsStateCompletedImpl &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            const DeepCollectionEquality()
                .equals(other._selectedCards, _selectedCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthDate,
      const DeepCollectionEquality().hash(_selectedCards));

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCardsStateCompletedImplCopyWith<_$DiscountCardsStateCompletedImpl>
      get copyWith => __$$DiscountCardsStateCompletedImplCopyWithImpl<
          _$DiscountCardsStateCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)
        initial,
    required TResult Function(DateTime? birthDate, Set<String>? selectedCards)
        completed,
  }) {
    return completed(birthDate, selectedCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult? Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
  }) {
    return completed?.call(birthDate, selectedCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Set<String>? selectedCards,
            List<String> availableDiscountCards,
            List<String> initiallySelectedCards,
            DateTime? birthDate)?
        initial,
    TResult Function(DateTime? birthDate, Set<String>? selectedCards)?
        completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(birthDate, selectedCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscountCardsStateInitial value) initial,
    required TResult Function(DiscountCardsStateCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountCardsStateInitial value)? initial,
    TResult? Function(DiscountCardsStateCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountCardsStateInitial value)? initial,
    TResult Function(DiscountCardsStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class DiscountCardsStateCompleted implements DiscountCardsState {
  const factory DiscountCardsStateCompleted(
      {final DateTime? birthDate,
      final Set<String>? selectedCards}) = _$DiscountCardsStateCompletedImpl;

  @override
  DateTime? get birthDate;
  @override
  Set<String>? get selectedCards;

  /// Create a copy of DiscountCardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCardsStateCompletedImplCopyWith<_$DiscountCardsStateCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$User {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String firstName, String lastName, String email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String email});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_$UserImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.firstName, required this.lastName, required this.email});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String firstName,
      required final String lastName,
      required final String email}) = _$UserImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CyclesAddingRulesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int selectedValue) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int selectedValue)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int selectedValue)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CyclesAddingRulesStateInitial value) initial,
    required TResult Function(CyclesAddingRulesStateChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CyclesAddingRulesStateInitial value)? initial,
    TResult? Function(CyclesAddingRulesStateChange value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CyclesAddingRulesStateInitial value)? initial,
    TResult Function(CyclesAddingRulesStateChange value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CyclesAddingRulesStateCopyWith<$Res> {
  factory $CyclesAddingRulesStateCopyWith(CyclesAddingRulesState value,
          $Res Function(CyclesAddingRulesState) then) =
      _$CyclesAddingRulesStateCopyWithImpl<$Res, CyclesAddingRulesState>;
}

/// @nodoc
class _$CyclesAddingRulesStateCopyWithImpl<$Res,
        $Val extends CyclesAddingRulesState>
    implements $CyclesAddingRulesStateCopyWith<$Res> {
  _$CyclesAddingRulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CyclesAddingRulesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CyclesAddingRulesStateInitialImplCopyWith<$Res> {
  factory _$$CyclesAddingRulesStateInitialImplCopyWith(
          _$CyclesAddingRulesStateInitialImpl value,
          $Res Function(_$CyclesAddingRulesStateInitialImpl) then) =
      __$$CyclesAddingRulesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CyclesAddingRulesStateInitialImplCopyWithImpl<$Res>
    extends _$CyclesAddingRulesStateCopyWithImpl<$Res,
        _$CyclesAddingRulesStateInitialImpl>
    implements _$$CyclesAddingRulesStateInitialImplCopyWith<$Res> {
  __$$CyclesAddingRulesStateInitialImplCopyWithImpl(
      _$CyclesAddingRulesStateInitialImpl _value,
      $Res Function(_$CyclesAddingRulesStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CyclesAddingRulesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CyclesAddingRulesStateInitialImpl
    implements CyclesAddingRulesStateInitial {
  const _$CyclesAddingRulesStateInitialImpl();

  @override
  String toString() {
    return 'CyclesAddingRulesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CyclesAddingRulesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int selectedValue) change,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int selectedValue)? change,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int selectedValue)? change,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CyclesAddingRulesStateInitial value) initial,
    required TResult Function(CyclesAddingRulesStateChange value) change,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CyclesAddingRulesStateInitial value)? initial,
    TResult? Function(CyclesAddingRulesStateChange value)? change,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CyclesAddingRulesStateInitial value)? initial,
    TResult Function(CyclesAddingRulesStateChange value)? change,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CyclesAddingRulesStateInitial implements CyclesAddingRulesState {
  const factory CyclesAddingRulesStateInitial() =
      _$CyclesAddingRulesStateInitialImpl;
}

/// @nodoc
abstract class _$$CyclesAddingRulesStateChangeImplCopyWith<$Res> {
  factory _$$CyclesAddingRulesStateChangeImplCopyWith(
          _$CyclesAddingRulesStateChangeImpl value,
          $Res Function(_$CyclesAddingRulesStateChangeImpl) then) =
      __$$CyclesAddingRulesStateChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedValue});
}

/// @nodoc
class __$$CyclesAddingRulesStateChangeImplCopyWithImpl<$Res>
    extends _$CyclesAddingRulesStateCopyWithImpl<$Res,
        _$CyclesAddingRulesStateChangeImpl>
    implements _$$CyclesAddingRulesStateChangeImplCopyWith<$Res> {
  __$$CyclesAddingRulesStateChangeImplCopyWithImpl(
      _$CyclesAddingRulesStateChangeImpl _value,
      $Res Function(_$CyclesAddingRulesStateChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CyclesAddingRulesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$CyclesAddingRulesStateChangeImpl(
      null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CyclesAddingRulesStateChangeImpl
    implements CyclesAddingRulesStateChange {
  const _$CyclesAddingRulesStateChangeImpl(this.selectedValue);

  @override
  final int selectedValue;

  @override
  String toString() {
    return 'CyclesAddingRulesState.change(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CyclesAddingRulesStateChangeImpl &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  /// Create a copy of CyclesAddingRulesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CyclesAddingRulesStateChangeImplCopyWith<
          _$CyclesAddingRulesStateChangeImpl>
      get copyWith => __$$CyclesAddingRulesStateChangeImplCopyWithImpl<
          _$CyclesAddingRulesStateChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int selectedValue) change,
  }) {
    return change(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int selectedValue)? change,
  }) {
    return change?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int selectedValue)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CyclesAddingRulesStateInitial value) initial,
    required TResult Function(CyclesAddingRulesStateChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CyclesAddingRulesStateInitial value)? initial,
    TResult? Function(CyclesAddingRulesStateChange value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CyclesAddingRulesStateInitial value)? initial,
    TResult Function(CyclesAddingRulesStateChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class CyclesAddingRulesStateChange implements CyclesAddingRulesState {
  const factory CyclesAddingRulesStateChange(final int selectedValue) =
      _$CyclesAddingRulesStateChangeImpl;

  int get selectedValue;

  /// Create a copy of CyclesAddingRulesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CyclesAddingRulesStateChangeImplCopyWith<
          _$CyclesAddingRulesStateChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreviousNextProposalsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousNextProposalsStateInitial value) initial,
    required TResult Function(PreviousNextProposalsStateLoading value) loading,
    required TResult Function(PreviousNextProposalsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviousNextProposalsStateInitial value)? initial,
    TResult? Function(PreviousNextProposalsStateLoading value)? loading,
    TResult? Function(PreviousNextProposalsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousNextProposalsStateInitial value)? initial,
    TResult Function(PreviousNextProposalsStateLoading value)? loading,
    TResult Function(PreviousNextProposalsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousNextProposalsStateCopyWith<$Res> {
  factory $PreviousNextProposalsStateCopyWith(PreviousNextProposalsState value,
          $Res Function(PreviousNextProposalsState) then) =
      _$PreviousNextProposalsStateCopyWithImpl<$Res,
          PreviousNextProposalsState>;
}

/// @nodoc
class _$PreviousNextProposalsStateCopyWithImpl<$Res,
        $Val extends PreviousNextProposalsState>
    implements $PreviousNextProposalsStateCopyWith<$Res> {
  _$PreviousNextProposalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PreviousNextProposalsStateInitialImplCopyWith<$Res> {
  factory _$$PreviousNextProposalsStateInitialImplCopyWith(
          _$PreviousNextProposalsStateInitialImpl value,
          $Res Function(_$PreviousNextProposalsStateInitialImpl) then) =
      __$$PreviousNextProposalsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousNextProposalsStateInitialImplCopyWithImpl<$Res>
    extends _$PreviousNextProposalsStateCopyWithImpl<$Res,
        _$PreviousNextProposalsStateInitialImpl>
    implements _$$PreviousNextProposalsStateInitialImplCopyWith<$Res> {
  __$$PreviousNextProposalsStateInitialImplCopyWithImpl(
      _$PreviousNextProposalsStateInitialImpl _value,
      $Res Function(_$PreviousNextProposalsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousNextProposalsStateInitialImpl
    implements PreviousNextProposalsStateInitial {
  const _$PreviousNextProposalsStateInitialImpl();

  @override
  String toString() {
    return 'PreviousNextProposalsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousNextProposalsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousNextProposalsStateInitial value) initial,
    required TResult Function(PreviousNextProposalsStateLoading value) loading,
    required TResult Function(PreviousNextProposalsStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviousNextProposalsStateInitial value)? initial,
    TResult? Function(PreviousNextProposalsStateLoading value)? loading,
    TResult? Function(PreviousNextProposalsStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousNextProposalsStateInitial value)? initial,
    TResult Function(PreviousNextProposalsStateLoading value)? loading,
    TResult Function(PreviousNextProposalsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PreviousNextProposalsStateInitial
    implements PreviousNextProposalsState {
  const factory PreviousNextProposalsStateInitial() =
      _$PreviousNextProposalsStateInitialImpl;
}

/// @nodoc
abstract class _$$PreviousNextProposalsStateLoadingImplCopyWith<$Res> {
  factory _$$PreviousNextProposalsStateLoadingImplCopyWith(
          _$PreviousNextProposalsStateLoadingImpl value,
          $Res Function(_$PreviousNextProposalsStateLoadingImpl) then) =
      __$$PreviousNextProposalsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousNextProposalsStateLoadingImplCopyWithImpl<$Res>
    extends _$PreviousNextProposalsStateCopyWithImpl<$Res,
        _$PreviousNextProposalsStateLoadingImpl>
    implements _$$PreviousNextProposalsStateLoadingImplCopyWith<$Res> {
  __$$PreviousNextProposalsStateLoadingImplCopyWithImpl(
      _$PreviousNextProposalsStateLoadingImpl _value,
      $Res Function(_$PreviousNextProposalsStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousNextProposalsStateLoadingImpl
    implements PreviousNextProposalsStateLoading {
  const _$PreviousNextProposalsStateLoadingImpl();

  @override
  String toString() {
    return 'PreviousNextProposalsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousNextProposalsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousNextProposalsStateInitial value) initial,
    required TResult Function(PreviousNextProposalsStateLoading value) loading,
    required TResult Function(PreviousNextProposalsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviousNextProposalsStateInitial value)? initial,
    TResult? Function(PreviousNextProposalsStateLoading value)? loading,
    TResult? Function(PreviousNextProposalsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousNextProposalsStateInitial value)? initial,
    TResult Function(PreviousNextProposalsStateLoading value)? loading,
    TResult Function(PreviousNextProposalsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PreviousNextProposalsStateLoading
    implements PreviousNextProposalsState {
  const factory PreviousNextProposalsStateLoading() =
      _$PreviousNextProposalsStateLoadingImpl;
}

/// @nodoc
abstract class _$$PreviousNextProposalsStateFailureImplCopyWith<$Res> {
  factory _$$PreviousNextProposalsStateFailureImplCopyWith(
          _$PreviousNextProposalsStateFailureImpl value,
          $Res Function(_$PreviousNextProposalsStateFailureImpl) then) =
      __$$PreviousNextProposalsStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PreviousNextProposalsStateFailureImplCopyWithImpl<$Res>
    extends _$PreviousNextProposalsStateCopyWithImpl<$Res,
        _$PreviousNextProposalsStateFailureImpl>
    implements _$$PreviousNextProposalsStateFailureImplCopyWith<$Res> {
  __$$PreviousNextProposalsStateFailureImplCopyWithImpl(
      _$PreviousNextProposalsStateFailureImpl _value,
      $Res Function(_$PreviousNextProposalsStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PreviousNextProposalsStateFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreviousNextProposalsStateFailureImpl
    implements PreviousNextProposalsStateFailure {
  const _$PreviousNextProposalsStateFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PreviousNextProposalsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousNextProposalsStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousNextProposalsStateFailureImplCopyWith<
          _$PreviousNextProposalsStateFailureImpl>
      get copyWith => __$$PreviousNextProposalsStateFailureImplCopyWithImpl<
          _$PreviousNextProposalsStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousNextProposalsStateInitial value) initial,
    required TResult Function(PreviousNextProposalsStateLoading value) loading,
    required TResult Function(PreviousNextProposalsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviousNextProposalsStateInitial value)? initial,
    TResult? Function(PreviousNextProposalsStateLoading value)? loading,
    TResult? Function(PreviousNextProposalsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousNextProposalsStateInitial value)? initial,
    TResult Function(PreviousNextProposalsStateLoading value)? loading,
    TResult Function(PreviousNextProposalsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PreviousNextProposalsStateFailure
    implements PreviousNextProposalsState {
  const factory PreviousNextProposalsStateFailure(final String error) =
      _$PreviousNextProposalsStateFailureImpl;

  String get error;

  /// Create a copy of PreviousNextProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviousNextProposalsStateFailureImplCopyWith<
          _$PreviousNextProposalsStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
