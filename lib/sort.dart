typedef KeySelector<T> = Comparable Function(T);

enum SortOrder { asc, desc }

class _Criteria<T> {
  final KeySelector<T> key;
  final SortOrder order;
  const _Criteria(this.key, this.order);
}

class OrderedIterable<T> {
  final List<T> _source;
  final List<_Criteria<T>> _criteria;

  OrderedIterable(List<T> source, [List<_Criteria<T>>? criteria])
      : _source = source,
        _criteria = List<_Criteria<T>>.of(criteria ?? []);

  OrderedIterable<T> thenBy(KeySelector<T> key, {SortOrder order = SortOrder.asc}) {
    return OrderedIterable(_source, [..._criteria, _Criteria(key, order)]);
  }

  OrderedIterable<T> thenByDescending(KeySelector<T> key) {
    return thenBy(key, order: SortOrder.desc);
  }

  List<T> toList() {
    final indexed = _source.map((e) => (value: e, keys: _criteria.map((c) => c.key(e)).toList())).toList()
      ..sort((a, b) {
        for (var i = 0; i < _criteria.length; i++) {
          final cmp = a.keys[i].compareTo(b.keys[i]);
          if (cmp != 0) {
            return _criteria[i].order == SortOrder.desc ? -cmp : cmp;
          }
        }
        return 0;
      });

    return indexed.map((e) => e.value).toList();
  }
}

extension OrderByExtension<T> on Iterable<T> {
  OrderedIterable<T> orderBy(KeySelector<T> key, {SortOrder order = SortOrder.asc}) {
    return OrderedIterable<T>(toList(), [_Criteria(key, order)]);
  }

  OrderedIterable<T> orderByDescending(KeySelector<T> key) {
    return orderBy(key, order: SortOrder.desc);
  }
}
