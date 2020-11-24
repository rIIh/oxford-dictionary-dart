extension FlattenExtension<T> on Iterable<Iterable<T>> {
  Iterable<T> flatten() => expand((element) => element);
}
