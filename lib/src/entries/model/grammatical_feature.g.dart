// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grammatical_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrammaticalFeature _$GrammaticalFeatureFromJson(Map json) {
  return GrammaticalFeature(
    json['id'] as String,
    json['text'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$GrammaticalFeatureToJson(GrammaticalFeature instance) {
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
