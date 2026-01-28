abstract class Copyable {
  Copyable copy();
}

extension DeepCopyCopyable<T extends Copyable> on List<T> {
  List<T> deepCopy() {
    return map((element) => element.copy() as T).toList();
  }
}
