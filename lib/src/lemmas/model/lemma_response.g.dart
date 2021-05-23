// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LemmaResponse _$LemmaResponseFromJson(Map json) {
  return LemmaResponse(
    Metadata.fromJson(json['metadata'] as Map),
    (json['results'] as List<dynamic>)
        .map((e) => LemmaResult.fromJson(e as Map))
        .toList(),
  );
}

Map<String, dynamic> _$LemmaResponseToJson(LemmaResponse instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
