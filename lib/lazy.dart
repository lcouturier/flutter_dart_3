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
