// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cross_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrossReference _$CrossReferenceFromJson(Map json) {
  return CrossReference(
    json['id'] as String,
    json['text'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$CrossReferenceToJson(CrossReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  writeNotNull('type', instance.type);
  return val;
}
