// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pronunciation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pronunciation _$PronunciationFromJson(Map json) {
  return Pronunciation(
    json['audioFile'] as String?,
    (json['dialects'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['phoneticNotation'] as String?,
    json['phoneticSpelling'] as String?,
  );
}

Map<String, dynamic> _$PronunciationToJson(Pronunciation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audioFile', instance.audioFile);
  writeNotNull('phoneticNotation', instance.phoneticNotation);
  writeNotNull('phoneticSpelling', instance.phoneticSpelling);
  writeNotNull('dialects', instance.dialects);
  return val;
}
