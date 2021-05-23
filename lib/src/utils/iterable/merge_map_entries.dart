extension MergeMapEntries<K, V> on Iterable<MapEntry<K, V>> {
  Iterable<MapEntry<K, List<V>>> mergeValues() {
    return fold<List<MapEntry<K, List<V>>>>(
      [],
      (reduced, element) {
        if (reduced.map((e) => e.key).contains(element.key)) {
          final list = reduced.firstWhere((reducedElement) => reducedElement.key == element.key).value;
          list.add(element.value);
        } else {
          reduced.add(MapEntry(element.key, [element.value]));
        }
        return reduced;
      },
    );
  }
}

Iterable<MapEntry<K, Iterable<V>>> _mergeValues<K, V>(Iterable<MapEntry<K, Iterable<V>>> target) {
  return target.fold<List<MapEntry<K, List<V>>>>(
    [],
    (reduced, element) {
      if (reduced.map((e) => e.key).contains(element.key)) {
        final list = reduced.firstWhere((reducedElement) => reducedElement.key == element.key).value;
        list.addAll(
          [
            ...element.value,
          ],
        );
      } else {
        reduced.add(
          MapEntry(
            element.key,
            element.value.toList(),
          ),
        );
      }
      return reduced;
    },
  );
}

extension MergeMapEntriesOnIterable<K, V> on Iterable<MapEntry<K, Iterable<V>>> {
  Iterable<MapEntry<K, Iterable<V>>> mergeValues() {
    return _mergeValues(this);
  }
}

extension MergeMapEntriesOnList<K, V> on Iterable<MapEntry<K, List<V>>> {
  Iterable<MapEntry<K, Iterable<V>>> mergeValues() {
    return _mergeValues(this);
  }
}
