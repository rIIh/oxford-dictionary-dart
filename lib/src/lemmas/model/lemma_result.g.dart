// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LemmaResult _$LemmaResultFromJson(Map json) {
  return LemmaResult(
    json['id'] as String,
    json['language'] as String,
    (json['lexicalEntries'] as List<dynamic>)
        .map((e) => LemmaEntry.fromJson(e as Map))
        .toList(),
    json['word'] as String?,
  );
}

Map<String, dynamic> _$LemmaResultToJson(LemmaResult instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'language': instance.language,
    'lexicalEntries': instance.lexicalEntries.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word);
  return val;
}
