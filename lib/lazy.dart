import 'package:flutter/widgets.dart';

class Lazy<T> {
  final T Function() _supplier;
  late T _value;
  bool _isValueSet = false;

  Lazy(this._supplier);

  @visibleForTesting
  bool get isValueSet => _isValueSet;

  T get value {
    if (!_isValueSet) {
      _value = _supplier();
      _isValueSet = true;
    }
    return _value;
  }
}

class Late<T> {
  final bool hasValue;
  final T? value;
  const Late({required this.hasValue, this.value});

  const Late.initial()
      : hasValue = false,
        value = null;

  const Late.of(T this.value) : hasValue = true;

  @override
  String toString() => 'Late(hasValue: $hasValue, value: $value)';

  static const empty = Late.initial();
}
