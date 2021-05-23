extension FirstOrNullExtension<T> on Iterable<T> {
  T? get firstOrNull {
    if (length > 0) return first;
    return null;
  }

  T? firstWhereOrNull(bool test(T element)) {
    for (final element in this) {
      if (test(element)) return element;
    }
  }
}
