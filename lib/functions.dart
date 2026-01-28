extension ScopeFunctionsOnNullableExtensions<T> on T? {
  R? let<R>(R? Function(T it) function, {R? Function()? defaultValue}) {
    final f = defaultValue ?? () => null;

    if (this != null) {
      return function(this as T);
    }
    return f();
  }
}
