extension PartitionExtension<T> on Iterable<T> {
  (List<T> matching, List<T> rest) partition(
    bool Function(T element) test,
  ) {
    final matching = <T>[];
    final rest = <T>[];

    for (final element in this) {
      if (test(element)) {
        matching.add(element);
      } else {
        rest.add(element);
      }
    }

    return (matching, rest);
  }
}
