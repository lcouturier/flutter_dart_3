sealed class PriceResult {
  const PriceResult();

  static const int errorValue = 0;

  /// Create a PriceResult from a string value
  ///
  /// If the string can be parsed as an integer, returns PriceSuccess
  /// Otherwise, returns PriceError
  factory PriceResult.fromString(String value) {
    try {
      return PriceSuccess(int.parse(value));
    } catch (e) {
      return PriceError(e.toString());
    }
  }

  bool get isParsed => this is PriceSuccess;
  bool get hasError => this is PriceError;

  /// Get the price value if the result is a success, otherwise return 0
  int get price => when(onSuccess: (e) => e, onError: (reason) => errorValue);

  /// Apply different functions based on the result type
  ///
  /// [onSuccess] is called when the result is a success
  /// [onError] is called when the result is an error
  ///
  /// Returns the result of the called function
  T when<T>(
      {required T Function(int value) onSuccess,
      required T Function(String? reason) onError}) {
    return switch (this) {
      PriceSuccess(value: final price) => onSuccess(price),
      PriceError(:final reason) => onError(reason),
    };
  }

  /// Apply different functions based on the result type, with a fallback
  ///
  /// [onSuccess] is called when the result is a success
  /// [onError] is called when the result is an error
  /// [orElse] is called when the result is neither a success nor an error
  ///
  /// Returns the result of the called function
  T maybeWhen<T extends Object?>(
      {T Function(int value)? onSuccess,
      T Function(String? reason)? onError,
      required T Function() orElse}) {
    return switch (this) {
      PriceSuccess(value: final price) when onSuccess != null =>
        onSuccess(price),
      PriceError(:final reason) when onError != null => onError(reason),
      _ => orElse()
    };
  }
}

class PriceSuccess extends PriceResult {
  const PriceSuccess(this.value);

  final int value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PriceSuccess && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }
}

class PriceError extends PriceResult {
  const PriceError([this.reason]);

  final String? reason;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PriceError && other.reason == reason;
  }

  @override
  int get hashCode {
    return reason.hashCode;
  }
}

class PriceResultIterator implements Iterator<PriceResult> {
  PriceResultIterator(Iterable<String> items) : _inputIterator = items.iterator;

  final Iterator<String> _inputIterator;
  PriceResult? _current;

  @override
  PriceResult get current =>
      _current ?? (throw StateError('No current element'));

  @override
  bool moveNext() {
    while (_inputIterator.moveNext()) {
      final result = PriceResult.fromString(_inputIterator.current);
      if (result.isParsed) {
        _current = result;
        return true;
      }
    }
    _current = null;
    return false;
  }
}

class PriceResultIterable extends Iterable<PriceResult> {
  PriceResultIterable(this.items);

  final Iterable<String> items;

  @override
  Iterator<PriceResult> get iterator => PriceResultIterator(items);
}

extension PriceResultIterableExtension on Iterable<String> {
  PriceResultIterable get priceResults => PriceResultIterable(this);
}

extension PriceResultLazyExtension on Iterable<String> {
  /// Générateur paresseux (Lazy) équivalent à votre Iterable/Iterator custom
  Iterable<PriceSuccess> get prices sync* {
    for (final raw in this) {
      final result = PriceResult.fromString(raw);
      if (result case PriceSuccess valid) {
        yield valid;
      }
    }
  }
}
