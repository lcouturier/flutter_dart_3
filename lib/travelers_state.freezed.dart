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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidUpdateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteImpl &&
            (identical(other.trips, trips) || other.trips == trips));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trips);

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
