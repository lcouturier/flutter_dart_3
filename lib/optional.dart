import 'package:flutter/widgets.dart';

class Optional<T> {
  T? _value;
  bool _isValueSet = false;

  Optional(this._value) : _isValueSet = _value != null;

  factory Optional.of(T value) => Optional(value);
  factory Optional.ofNullable(T? value) => value == null ? Optional.none() : Optional(value);
  factory Optional.none() => Optional(null);

  bool get hasValue => _isValueSet;
  T get value => _isValueSet ? _value! : throw Exception('No value set');

  @visibleForTesting
  bool get isValueSet => _isValueSet;

  Optional<T> orElse(T Function() orElse) => _isValueSet ? this : Optional(orElse());
  Optional<R> map<R>(R Function(T value) mapper) => _isValueSet ? Optional(mapper(_value as T)) : Optional.none();

  void ifPresent(void Function(T value) consumer) => _isValueSet ? consumer(_value as T) : null;

  @override
  String toString() => 'Optional{value: $value}';
}
