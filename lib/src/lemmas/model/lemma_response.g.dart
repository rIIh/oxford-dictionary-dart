// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LemmaResponse _$LemmaResponseFromJson(Map json) {
  return LemmaResponse(
    json['metadata'] == null ? null : Metadata.fromJson(json['metadata'] as Map),
    (json['results'] as List)?.map((e) => e == null ? null : LemmaResult.fromJson(e as Map))?.toList(),
  );
}

Map<String, dynamic> _$LemmaResponseToJson(LemmaResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('results', instance.results?.map((e) => e?.toJson())?.toList());
  return val;
}
