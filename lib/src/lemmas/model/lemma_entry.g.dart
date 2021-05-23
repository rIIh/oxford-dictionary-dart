// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LemmaEntry _$LemmaEntryFromJson(Map json) {
  return LemmaEntry(
    (json['inflectionOf'] as List<dynamic>)
        .map((e) => InflectionOfData.fromJson(e as Map))
        .toList(),
    json['language'] as String,
    LexicalCategory.fromJson(json['lexicalCategory'] as Map),
    json['text'] as String,
  );
}

Map<String, dynamic> _$LemmaEntryToJson(LemmaEntry instance) =>
    <String, dynamic>{
      'inflectionOf': instance.inflectionOf.map((e) => e.toJson()).toList(),
      'lexicalCategory': instance.lexicalCategory.toJson(),
      'language': instance.language,
      'text': instance.text,
    };
