// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexicalEntries _$LexicalEntriesFromJson(Map json) {
  return LexicalEntries(
    (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : LexicalEntry.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    json['language'] as String,
    json['lexicalCategory'] == null ? null : LexicalCategory.fromJson(json['lexicalCategory'] as Map),
    (json['phrases'] as List)?.map((e) => e == null ? null : Phrase.fromJson(e as Map))?.toList(),
    json['text'] as String,
  );
}

Map<String, dynamic> _$LexicalEntriesToJson(LexicalEntries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entries', instance.entries?.map((e) => e?.toJson())?.toList());
  writeNotNull('language', instance.language);
  writeNotNull('lexicalCategory', instance.lexicalCategory?.toJson());
  writeNotNull('phrases', instance.phrases?.map((e) => e?.toJson())?.toList());
  writeNotNull('text', instance.text);
  return val;
}
