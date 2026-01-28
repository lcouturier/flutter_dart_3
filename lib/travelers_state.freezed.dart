// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travelers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> items) initial,
    required TResult Function(List<String> items) didUpdate,
    required TResult Function(List<String> items, String description) invalid,
    required TResult Function(TripsAndTravelersSelection trips) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> items)? initial,
    TResult? Function(List<String> items)? didUpdate,
    TResult? Function(List<String> items, String description)? invalid,
    TResult? Function(TripsAndTravelersSelection trips)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> items)? initial,
    TResult Function(List<String> items)? didUpdate,
    TResult Function(List<String> items, String description)? invalid,
    TResult Function(TripsAndTravelersSelection trips)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DidUpdate value) didUpdate,
    required TResult Function(Invalid value) invalid,
    required TResult Function(Complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DidUpdate value)? didUpdate,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(Complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DidUpdate value)? didUpdate,
    TResult Function(Invalid value)? invalid,
    TResult Function(Complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelersStateCopyWith<$Res> {
  factory $TravelersStateCopyWith(
          TravelersState value, $Res Function(TravelersState) then) =
      _$TravelersStateCopyWithImpl<$Res, TravelersState>;
}

/// @nodoc
class _$TravelersStateCopyWithImpl<$Res, $Val extends TravelersState>
    implements $TravelersStateCopyWith<$Res> {
  _$TravelersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TravelersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$InitialImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(final List<String> items) : _items = items;

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TravelersState.initial(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> items) initial,
    required TResult Function(List<String> items) didUpdate,
    required TResult Function(List<String> items, String description) invalid,
    required TResult Function(TripsAndTravelersSelection trips) complete,
  }) {
    return initial(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> items)? initial,
    TResult? Function(List<String> items)? didUpdate,
    TResult? Function(List<String> items, String description)? invalid,
    TResult? Function(TripsAndTravelersSelection trips)? complete,
  }) {
    return initial?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> items)? initial,
    TResult Function(List<String> items)? didUpdate,
    TResult Function(List<String> items, String description)? invalid,
    TResult Function(TripsAndTravelersSelection trips)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DidUpdate value) didUpdate,
    required TResult Function(Invalid value) invalid,
    required TResult Function(Complete value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DidUpdate value)? didUpdate,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(Complete value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DidUpdate value)? didUpdate,
    TResult Function(Invalid value)? invalid,
    TResult Function(Complete value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TravelersState {
  const factory Initial(final List<String> items) = _$InitialImpl;

  List<String> get items;

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidUpdateImplCopyWith<$Res> {
  factory _$$DidUpdateImplCopyWith(
          _$DidUpdateImpl value, $Res Function(_$DidUpdateImpl) then) =
      __$$DidUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class __$$DidUpdateImplCopyWithImpl<$Res>
    extends _$TravelersStateCopyWithImpl<$Res, _$DidUpdateImpl>
    implements _$$DidUpdateImplCopyWith<$Res> {
  __$$DidUpdateImplCopyWithImpl(
      _$DidUpdateImpl _value, $Res Function(_$DidUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$DidUpdateImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DidUpdateImpl implements DidUpdate {
  const _$DidUpdateImpl(final List<String> items) : _items = items;

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TravelersState.didUpdate(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidUpdateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DidUpdateImplCopyWith<_$DidUpdateImpl> get copyWith =>
      __$$DidUpdateImplCopyWithImpl<_$DidUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> items) initial,
    required TResult Function(List<String> items) didUpdate,
    required TResult Function(List<String> items, String description) invalid,
    required TResult Function(TripsAndTravelersSelection trips) complete,
  }) {
    return didUpdate(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> items)? initial,
    TResult? Function(List<String> items)? didUpdate,
    TResult? Function(List<String> items, String description)? invalid,
    TResult? Function(TripsAndTravelersSelection trips)? complete,
  }) {
    return didUpdate?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> items)? initial,
    TResult Function(List<String> items)? didUpdate,
    TResult Function(List<String> items, String description)? invalid,
    TResult Function(TripsAndTravelersSelection trips)? complete,
    required TResult orElse(),
  }) {
    if (didUpdate != null) {
      return didUpdate(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DidUpdate value) didUpdate,
    required TResult Function(Invalid value) invalid,
    required TResult Function(Complete value) complete,
  }) {
    return didUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DidUpdate value)? didUpdate,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(Complete value)? complete,
  }) {
    return didUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DidUpdate value)? didUpdate,
    TResult Function(Invalid value)? invalid,
    TResult Function(Complete value)? complete,
    required TResult orElse(),
  }) {
    if (didUpdate != null) {
      return didUpdate(this);
    }
    return orElse();
  }
}

abstract class DidUpdate implements TravelersState {
  const factory DidUpdate(final List<String> items) = _$DidUpdateImpl;

  List<String> get items;

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DidUpdateImplCopyWith<_$DidUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<$Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl value, $Res Function(_$InvalidImpl) then) =
      __$$InvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> items, String description});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<$Res>
    extends _$TravelersStateCopyWithImpl<$Res, _$InvalidImpl>
    implements _$$InvalidImplCopyWith<$Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl _value, $Res Function(_$InvalidImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? description = null,
  }) {
    return _then(_$InvalidImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidImpl implements Invalid {
  const _$InvalidImpl(final List<String> items, this.description)
      : _items = items;

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String description;

  @override
  String toString() {
    return 'TravelersState.invalid(items: $items, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), description);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      __$$InvalidImplCopyWithImpl<_$InvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> items) initial,
    required TResult Function(List<String> items) didUpdate,
    required TResult Function(List<String> items, String description) invalid,
    required TResult Function(TripsAndTravelersSelection trips) complete,
  }) {
    return invalid(items, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> items)? initial,
    TResult? Function(List<String> items)? didUpdate,
    TResult? Function(List<String> items, String description)? invalid,
    TResult? Function(TripsAndTravelersSelection trips)? complete,
  }) {
    return invalid?.call(items, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> items)? initial,
    TResult Function(List<String> items)? didUpdate,
    TResult Function(List<String> items, String description)? invalid,
    TResult Function(TripsAndTravelersSelection trips)? complete,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(items, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DidUpdate value) didUpdate,
    required TResult Function(Invalid value) invalid,
    required TResult Function(Complete value) complete,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DidUpdate value)? didUpdate,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(Complete value)? complete,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DidUpdate value)? didUpdate,
    TResult Function(Invalid value)? invalid,
    TResult Function(Complete value)? complete,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid implements TravelersState {
  const factory Invalid(final List<String> items, final String description) =
      _$InvalidImpl;

  List<String> get items;
  String get description;

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteImplCopyWith<$Res> {
  factory _$$CompleteImplCopyWith(
          _$CompleteImpl value, $Res Function(_$CompleteImpl) then) =
      __$$CompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TripsAndTravelersSelection trips});
}

/// @nodoc
class __$$CompleteImplCopyWithImpl<$Res>
    extends _$TravelersStateCopyWithImpl<$Res, _$CompleteImpl>
    implements _$$CompleteImplCopyWith<$Res> {
  __$$CompleteImplCopyWithImpl(
      _$CompleteImpl _value, $Res Function(_$CompleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_$CompleteImpl(
      null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as TripsAndTravelersSelection,
    ));
  }
}

/// @nodoc

class _$CompleteImpl implements Complete {
  const _$CompleteImpl(this.trips);

  @override
  final TripsAndTravelersSelection trips;

  @override
  String toString() {
    return 'TravelersState.complete(trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteImpl &&
            (identical(other.trips, trips) || other.trips == trips));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trips);

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      __$$CompleteImplCopyWithImpl<_$CompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> items) initial,
    required TResult Function(List<String> items) didUpdate,
    required TResult Function(List<String> items, String description) invalid,
    required TResult Function(TripsAndTravelersSelection trips) complete,
  }) {
    return complete(trips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> items)? initial,
    TResult? Function(List<String> items)? didUpdate,
    TResult? Function(List<String> items, String description)? invalid,
    TResult? Function(TripsAndTravelersSelection trips)? complete,
  }) {
    return complete?.call(trips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> items)? initial,
    TResult Function(List<String> items)? didUpdate,
    TResult Function(List<String> items, String description)? invalid,
    TResult Function(TripsAndTravelersSelection trips)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DidUpdate value) didUpdate,
    required TResult Function(Invalid value) invalid,
    required TResult Function(Complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DidUpdate value)? didUpdate,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(Complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DidUpdate value)? didUpdate,
    TResult Function(Invalid value)? invalid,
    TResult Function(Complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class Complete implements TravelersState {
  const factory Complete(final TripsAndTravelersSelection trips) =
      _$CompleteImpl;

  TripsAndTravelersSelection get trips;

  /// Create a copy of TravelersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShopTravelDateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)
        initial,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) initial,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? initial,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? initial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTravelDateStateCopyWith<$Res> {
  factory $ShopTravelDateStateCopyWith(
          ShopTravelDateState value, $Res Function(ShopTravelDateState) then) =
      _$ShopTravelDateStateCopyWithImpl<$Res, ShopTravelDateState>;
}

/// @nodoc
class _$ShopTravelDateStateCopyWithImpl<$Res, $Val extends ShopTravelDateState>
    implements $ShopTravelDateStateCopyWith<$Res> {
  _$ShopTravelDateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime currentDate,
      DateTime startDate,
      DateTime? endDate,
      DateTime firstDate,
      DateTime lastDate});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$ShopTravelDateStateCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? firstDate = null,
    Object? lastDate = null,
  }) {
    return _then(_$StartImpl(
      null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      null == firstDate
          ? _value.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$StartImpl implements Start {
  const _$StartImpl(this.currentDate, this.startDate, this.endDate,
      this.firstDate, this.lastDate);

  @override
  final DateTime currentDate;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final DateTime firstDate;
  @override
  final DateTime lastDate;

  @override
  String toString() {
    return 'ShopTravelDateState.initial(currentDate: $currentDate, startDate: $startDate, endDate: $endDate, firstDate: $firstDate, lastDate: $lastDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentDate, startDate, endDate, firstDate, lastDate);

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)
        initial,
    required TResult Function(String message) error,
  }) {
    return initial(currentDate, startDate, endDate, firstDate, lastDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(currentDate, startDate, endDate, firstDate, lastDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentDate, startDate, endDate, firstDate, lastDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) initial,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? initial,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? initial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Start implements ShopTravelDateState {
  const factory Start(
      final DateTime currentDate,
      final DateTime startDate,
      final DateTime? endDate,
      final DateTime firstDate,
      final DateTime lastDate) = _$StartImpl;

  DateTime get currentDate;
  DateTime get startDate;
  DateTime? get endDate;
  DateTime get firstDate;
  DateTime get lastDate;

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ShopTravelDateStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ShopTravelDateState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)
        initial,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, DateTime startDate,
            DateTime? endDate, DateTime firstDate, DateTime lastDate)?
        initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) initial,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? initial,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? initial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ShopTravelDateState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ShopTravelDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
