// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryEntries _$DictionaryEntriesFromJson(Map json) {
  return DictionaryEntries(
    id: json['id'] as String,
    metadata: json['metadata'] == null ? null : Metadata.fromJson(json['metadata'] as Map),
    results: (json['results'] as List)?.map((e) => e == null ? null : Result.fromJson(e as Map))?.toList(),
    word: json['word'] as String,
  );
}

Map<String, dynamic> _$DictionaryEntriesToJson(DictionaryEntries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('results', instance.results?.map((e) => e?.toJson())?.toList());
  writeNotNull('word', instance.word);
  return val;
}
