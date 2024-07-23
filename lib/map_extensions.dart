extension MapExtensions<K, V> on Map<K, V> {
  V getOrDefault(K key, V Function() defaultValue) {
    return this[key] ?? defaultValue();
  }

  Map<K, V> operator +(Map<K, V> other) {
    return {...this, ...other};
  }

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) => other.containsKey(key));
  }

  void addOrReplace(K key, V value) {
    if (containsKey(key)) {
      this[key] = value;
    } else {
      this[key] = value;
    }
  }

  void putIfAbsent(K key, V Function() value) {
    if (!containsKey(key)) {
      this[key] = value();
    }
  }

  void removeIf(K key, bool Function(V value) predicate) {
    // ignore: null_check_on_nullable_type_parameter
    if (containsKey(key) && predicate(this[key]!)) {
      remove(key);
    }
  }
}
