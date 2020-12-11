// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LemmaEntry _$LemmaEntryFromJson(Map json) {
  return LemmaEntry(
    (json['inflectionOf'] as List)?.map((e) => e == null ? null : InflectionOfData.fromJson(e as Map))?.toList(),
    json['language'] as String,
    json['lexicalCategory'] == null ? null : LexicalCategory.fromJson(json['lexicalCategory'] as Map),
    json['text'] as String,
  );
}

Map<String, dynamic> _$LemmaEntryToJson(LemmaEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inflectionOf', instance.inflectionOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('language', instance.language);
  writeNotNull('lexicalCategory', instance.lexicalCategory?.toJson());
  writeNotNull('text', instance.text);
  return val;
}
