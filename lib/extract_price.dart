/// Extracts the integer price (rounded up) from a localized price string.
///
/// Supports various locale formats:
/// - German:  "1.234,56 €" (dot as thousands separator, comma as decimal)
/// - French:  "1 234,56 €" (space as thousands separator, comma as decimal)
/// - Dutch:   "€ 1.234,56" (symbol prefix, dot as thousands separator)
/// - English: "€1,234.56"  (comma as thousands separator, dot as decimal)
/// - Italian: "1234,56 €"  (no thousands separator, comma as decimal)
/// - Spanish: "1234,56 €"  (no thousands separator, comma as decimal)
///
/// Returns the integer price rounded up to the nearest whole number.
int? extractPrice(String price) {
  if (price.isEmpty) return null;
  if (price.length > 32) return null; // Arbitrary limit to avoid parsing extremely large numbers

  // Remove currency symbols and whitespace around them
  final cleaned = price.replaceAll(RegExp(r'[€$£¥\s]'), '');
  if (cleaned.isEmpty) return null;

  // Determine the decimal separator based on the last occurrence of '.' or ','
  final lastDot = cleaned.lastIndexOf('.');
  final lastComma = cleaned.lastIndexOf(',');
  final decimalSeparator = switch (lastDot.compareTo(lastComma)) {
    1 => '.',
    -1 => ',',
    0 => '',
    _ => '',
  };

  if (decimalSeparator.isEmpty) {
    // No decimal separator found, parse as integer
    return int.tryParse(cleaned);
  }

  final normalized =
      cleaned.replaceAll(RegExp(decimalSeparator == '.' ? r',' : r'\.'), '').replaceAll(decimalSeparator, '.');
  final value = double.tryParse(normalized);
  if (value == null) return null;
  if (!value.isFinite) return null;

  return value.ceil();
}
