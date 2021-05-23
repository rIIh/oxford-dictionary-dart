// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexicalEntries _$LexicalEntriesFromJson(Map json) {
  return LexicalEntries(
    (json['entries'] as List<dynamic>)
        .map((e) => LexicalEntry.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    json['language'] as String,
    LexicalCategory.fromJson(json['lexicalCategory'] as Map),
    (json['phrases'] as List<dynamic>?)
        ?.map((e) => Phrase.fromJson(e as Map))
        .toList(),
    json['text'] as String?,
  );
}

Map<String, dynamic> _$LexicalEntriesToJson(LexicalEntries instance) {
  final val = <String, dynamic>{
    'entries': instance.entries.map((e) => e.toJson()).toList(),
    'language': instance.language,
    'lexicalCategory': instance.lexicalCategory.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phrases', instance.phrases?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text);
  return val;
}
