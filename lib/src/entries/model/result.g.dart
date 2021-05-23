// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map json) {
  return Result(
    json['id'] as String,
    json['language'] as String,
    (json['lexicalEntries'] as List<dynamic>)
        .map((e) => LexicalEntries.fromJson(e as Map))
        .toList(),
    json['type'] as String,
    json['word'] as String,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'lexicalEntries': instance.lexicalEntries.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'word': instance.word,
    };
