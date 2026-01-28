// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kioui_add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KiOuiAddState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool kiOuiEnabled) initial,
    required TResult Function(String? promoCode) validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool kiOuiEnabled)? initial,
    TResult? Function(String? promoCode)? validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool kiOuiEnabled)? initial,
    TResult Function(String? promoCode)? validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KiOuiAddInitial value) initial,
    required TResult Function(KiOuiValidate value) validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KiOuiAddInitial value)? initial,
    TResult? Function(KiOuiValidate value)? validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KiOuiAddInitial value)? initial,
    TResult Function(KiOuiValidate value)? validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KiOuiAddStateCopyWith<$Res> {
  factory $KiOuiAddStateCopyWith(
          KiOuiAddState value, $Res Function(KiOuiAddState) then) =
      _$KiOuiAddStateCopyWithImpl<$Res, KiOuiAddState>;
}

/// @nodoc
class _$KiOuiAddStateCopyWithImpl<$Res, $Val extends KiOuiAddState>
    implements $KiOuiAddStateCopyWith<$Res> {
  _$KiOuiAddStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$KiOuiAddInitialImplCopyWith<$Res> {
  factory _$$KiOuiAddInitialImplCopyWith(_$KiOuiAddInitialImpl value,
          $Res Function(_$KiOuiAddInitialImpl) then) =
      __$$KiOuiAddInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool kiOuiEnabled});
}

/// @nodoc
class __$$KiOuiAddInitialImplCopyWithImpl<$Res>
    extends _$KiOuiAddStateCopyWithImpl<$Res, _$KiOuiAddInitialImpl>
    implements _$$KiOuiAddInitialImplCopyWith<$Res> {
  __$$KiOuiAddInitialImplCopyWithImpl(
      _$KiOuiAddInitialImpl _value, $Res Function(_$KiOuiAddInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kiOuiEnabled = null,
  }) {
    return _then(_$KiOuiAddInitialImpl(
      kiOuiEnabled: null == kiOuiEnabled
          ? _value.kiOuiEnabled
          : kiOuiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$KiOuiAddInitialImpl implements KiOuiAddInitial {
  const _$KiOuiAddInitialImpl({required this.kiOuiEnabled});

  @override
  final bool kiOuiEnabled;

  @override
  String toString() {
    return 'KiOuiAddState.initial(kiOuiEnabled: $kiOuiEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KiOuiAddInitialImpl &&
            (identical(other.kiOuiEnabled, kiOuiEnabled) ||
                other.kiOuiEnabled == kiOuiEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kiOuiEnabled);

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KiOuiAddInitialImplCopyWith<_$KiOuiAddInitialImpl> get copyWith =>
      __$$KiOuiAddInitialImplCopyWithImpl<_$KiOuiAddInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool kiOuiEnabled) initial,
    required TResult Function(String? promoCode) validate,
  }) {
    return initial(kiOuiEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool kiOuiEnabled)? initial,
    TResult? Function(String? promoCode)? validate,
  }) {
    return initial?.call(kiOuiEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool kiOuiEnabled)? initial,
    TResult Function(String? promoCode)? validate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(kiOuiEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KiOuiAddInitial value) initial,
    required TResult Function(KiOuiValidate value) validate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KiOuiAddInitial value)? initial,
    TResult? Function(KiOuiValidate value)? validate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KiOuiAddInitial value)? initial,
    TResult Function(KiOuiValidate value)? validate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class KiOuiAddInitial implements KiOuiAddState {
  const factory KiOuiAddInitial({required final bool kiOuiEnabled}) =
      _$KiOuiAddInitialImpl;

  bool get kiOuiEnabled;

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KiOuiAddInitialImplCopyWith<_$KiOuiAddInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KiOuiValidateImplCopyWith<$Res> {
  factory _$$KiOuiValidateImplCopyWith(
          _$KiOuiValidateImpl value, $Res Function(_$KiOuiValidateImpl) then) =
      __$$KiOuiValidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? promoCode});
}

/// @nodoc
class __$$KiOuiValidateImplCopyWithImpl<$Res>
    extends _$KiOuiAddStateCopyWithImpl<$Res, _$KiOuiValidateImpl>
    implements _$$KiOuiValidateImplCopyWith<$Res> {
  __$$KiOuiValidateImplCopyWithImpl(
      _$KiOuiValidateImpl _value, $Res Function(_$KiOuiValidateImpl) _then)
      : super(_value, _then);

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoCode = freezed,
  }) {
    return _then(_$KiOuiValidateImpl(
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KiOuiValidateImpl implements KiOuiValidate {
  const _$KiOuiValidateImpl({this.promoCode});

  @override
  final String? promoCode;

  @override
  String toString() {
    return 'KiOuiAddState.validate(promoCode: $promoCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KiOuiValidateImpl &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promoCode);

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KiOuiValidateImplCopyWith<_$KiOuiValidateImpl> get copyWith =>
      __$$KiOuiValidateImplCopyWithImpl<_$KiOuiValidateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool kiOuiEnabled) initial,
    required TResult Function(String? promoCode) validate,
  }) {
    return validate(promoCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool kiOuiEnabled)? initial,
    TResult? Function(String? promoCode)? validate,
  }) {
    return validate?.call(promoCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool kiOuiEnabled)? initial,
    TResult Function(String? promoCode)? validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(promoCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KiOuiAddInitial value) initial,
    required TResult Function(KiOuiValidate value) validate,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KiOuiAddInitial value)? initial,
    TResult? Function(KiOuiValidate value)? validate,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KiOuiAddInitial value)? initial,
    TResult Function(KiOuiValidate value)? validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class KiOuiValidate implements KiOuiAddState {
  const factory KiOuiValidate({final String? promoCode}) = _$KiOuiValidateImpl;

  String? get promoCode;

  /// Create a copy of KiOuiAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KiOuiValidateImplCopyWith<_$KiOuiValidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
