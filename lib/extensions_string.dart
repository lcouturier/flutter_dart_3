import 'dart:math';

extension ExtensionString on String {
  String removeDigits() => replaceAll(RegExp(r'\d'), '');
  String removeNonDigits() => replaceAll(RegExp(r'\D'), '');
  String removeWhitespace() => replaceAll(RegExp(r'\s'), '');
  String removeLetters() => replaceAll(RegExp(r'[a-zA-Z]'), '');
  String removeNonLetters() => replaceAll(RegExp(r'[^a-zA-Z]'), '');
  String removeSymbols() => replaceAll(RegExp(r'[!@#$%^&*(),.?":{}|<>]'), '');
  String removeNonSymbols() =>
      replaceAll(RegExp(r'[^!@#$%^&*(),.?":{}|<>]'), '');
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

  String get head => substring(0, 1);
  String get tail => substring(1);

  String get reversed => _reverseString(this);

  static String _reverseString(String input) =>
      input.isEmpty ? '' : _reverseString(input.tail) + input.head;

  String plus({Object? element}) =>
      padRight(length + 1, element?.toString() ?? '');

  String operator <<(String? other) => this + (other ?? '');

  String get removeDiacritics {
    var withDiacritics =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var withoutDiacritics =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    return splitMapJoin('',
        onNonMatch: (char) => char.isNotEmpty && withDiacritics.contains(char)
            ? withoutDiacritics[withDiacritics.indexOf(char)]
            : char);
  }

  String get shuffled => _shuffledString(this);

  static String _shuffledString(String value) {
    final random = Random();
    final characters = value.split('');
    final shuffled = characters..shuffle(random);
    return shuffled.join();
  }
}

extension DurationExtensions on Duration {
  String get formatted {
    final seconds = inSeconds.remainder(60);
    final minutes = inSeconds ~/ 60;
    final hours = inSeconds ~/ 3600;
    final days = inSeconds ~/ 86400;
    return '${days.toString().padLeft(2, '0')}:${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String get Hm {
    final minutes = inSeconds ~/ 60;
    final hours = inSeconds ~/ 3600;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  String get Hms {
    final seconds = inSeconds.remainder(60);
    final minutes = inSeconds ~/ 60;
    final hours = inSeconds ~/ 3600;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

extension StringNullableExtensions on String? {
  bool get isNotBlank => this != null && this!.trim().isNotEmpty;
}
