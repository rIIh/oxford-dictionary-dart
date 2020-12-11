// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map json) {
  return Result(
    json['id'] as String,
    json['language'] as String,
    (json['lexicalEntries'] as List)?.map((e) => e == null ? null : LexicalEntries.fromJson(e as Map))?.toList(),
    json['type'] as String,
    json['word'] as String,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('language', instance.language);
  writeNotNull('lexicalEntries', instance.lexicalEntries?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('word', instance.word);
  return val;
}
