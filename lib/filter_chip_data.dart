class FilterChipData {
  final String? label;
  final int? count;
  final String semanticsLabel;

  const FilterChipData({
    required this.label,
    required this.count,
    required this.semanticsLabel,
  });

  const FilterChipData.empty()
      : label = null,
        count = null,
        semanticsLabel = '';

  FilterChipData copyWith({
    String? Function()? label,
    int? Function()? count,
    String Function()? semanticsLabel,
  }) {
    return FilterChipData(
      label: label == null ? this.label : label(),
      count: count == null ? this.count : count(),
      semanticsLabel: semanticsLabel == null ? this.semanticsLabel : semanticsLabel(),
    );
  }
}
