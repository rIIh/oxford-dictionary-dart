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

Map<String, dynamic> _$GrammaticalFeatureToJson(GrammaticalFeature instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
    };
