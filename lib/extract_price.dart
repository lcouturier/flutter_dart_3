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

  final normalized = switch ((lastDot, lastComma)) {
    (int dot, int comma) when dot == -1 && comma == -1 => cleaned, // No decimal separator found
    (int dot, int comma) when dot >= 0 && comma < 0 => _nomalize(cleaned, '.'), // Only dot found
    (int dot, int comma) when comma >= 0 && dot < 0 => _nomalize(cleaned, ','), // Only comma found
    (int dot, int comma) when dot > comma => cleaned.replaceAll(',', ''), // Dot is the decimal separator, remove commas
    (int dot, int comma) when comma > dot => cleaned
        .replaceAll('.', '')
        .replaceAll(',', '.'), // Comma is the decimal separator, remove dots and replace comma with dot
    _ => cleaned, // No decimal separator found
  };

  final value = double.tryParse(normalized);
  if (value == null) return null; // Return null if parsing fails
  if (!value.isFinite) return null; // Return null for infinite or NaN values
  if (value > 1000000) return null; // Arbitrary limit to avoid parsing extremely large numbers

  return value.ceil();
}

String _nomalize(String cleaned, String decimalSeparator) {
  final parts = cleaned.split(decimalSeparator);
  if (parts.length == 2 && parts[1].length != 3) {
    return decimalSeparator == '.' ? cleaned : cleaned.replaceAll(',', '.');
  }
  return cleaned.replaceAll(decimalSeparator, '');
}
