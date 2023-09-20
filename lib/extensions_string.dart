extension ExtensionString on String {
  String removeDigits() => replaceAll(RegExp(r'\d'), '');
  String removeNonDigits() => replaceAll(RegExp(r'\D'), '');
  String removeWhitespace() => replaceAll(RegExp(r'\s'), '');
  String removeLetters() => replaceAll(RegExp(r'[a-zA-Z]'), '');
  String removeNonLetters() => replaceAll(RegExp(r'[^a-zA-Z]'), '');
  String removeSymbols() => replaceAll(RegExp(r'[!@#$%^&*(),.?":{}|<>]'), '');
  String removeNonSymbols() => replaceAll(RegExp(r'[^!@#$%^&*(),.?":{}|<>]'), '');
  String left(int size) {
    assert(size >= 0);
    return switch ((size, this)) {
      (_, '') => this,
      (0, _) => this,
      (_, _) => substring(0, size),
    };
  }

  String right(int size) {
    assert(size >= 0);
    return switch ((size, this)) {
      (_, '') => this,
      (0, _) => this,
      (_, _) => substring(length - size),
    };
  }

  String get digits => replaceAll(RegExp(r'\D'), '');
  String get nonDigits => replaceAll(RegExp(r'\d'), '');
  String get nonWhitespace => replaceAll(RegExp(r'\s'), '');
  String get letters => replaceAll(RegExp(r'[^a-zA-Z]'), '');
  String get nonLetters => replaceAll(RegExp(r'[a-zA-Z]'), '');
  String get symbols => replaceAll(RegExp(r'[^!@#$%^&*(),.?":{}|<>]'), '');
  String get nonSymbols => replaceAll(RegExp(r'[!@#$%^&*(),.?":{}|<>]'), '');

  String? get nullIfEmpty => isEmpty ? null : this;
  bool get isDigitsOnly => digits == this;
  bool get isLettersOnly => letters == this;
  bool get isSymbolsOnly => symbols == this;
}
