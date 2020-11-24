import '../../entries/model/dictionary_entry.dart';
import '../../utils/json_serializer.dart';

// ignore: avoid_classes_with_only_static_members
class EntriesFactories {
  static Map<Type, JsonFactory> get create => {DictionaryEntries: (json) => DictionaryEntries.fromJson(json)};
}
