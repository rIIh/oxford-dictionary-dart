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

Map<String, dynamic> _$SynonymToJson(Synonym instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('language', instance.language);
  writeNotNull('text', instance.text);
  return val;
}
