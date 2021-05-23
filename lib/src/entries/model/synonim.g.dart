// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synonim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Synonym _$SynonymFromJson(Map json) {
  return Synonym(
    json['language'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$SynonymToJson(Synonym instance) => <String, dynamic>{
      'language': instance.language,
      'text': instance.text,
    };
