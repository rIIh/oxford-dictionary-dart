// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexicalEntry _$LexicalEntryFromJson(Map json) {
  return LexicalEntry(
    grammaticalFeatures: (json['grammaticalFeatures'] as List)
        ?.map((e) => e == null ? null : GrammaticalFeature.fromJson(e as Map))
        ?.toList(),
    crossReferenceMarkers: (json['crossReferenceMarkers'] as List)?.map((e) => e as String)?.toList(),
    crossReferences:
        (json['crossReferences'] as List)?.map((e) => e == null ? null : CrossReference.fromJson(e as Map))?.toList(),
    etymologies: (json['etymologies'] as List)?.map((e) => e as String)?.toList(),
    homographNumber: json['homographNumber'] as String,
    pronunciations:
        (json['pronunciations'] as List)?.map((e) => e == null ? null : Pronunciation.fromJson(e as Map))?.toList(),
    senses: (json['senses'] as List)?.map((e) => e == null ? null : SenseFromRemote.fromJson(e as Map))?.toList(),
  );
}

Map<String, dynamic> _$LexicalEntryToJson(LexicalEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('crossReferenceMarkers', instance.crossReferenceMarkers);
  writeNotNull('crossReferences', instance.crossReferences?.map((e) => e?.toJson())?.toList());
  writeNotNull('grammaticalFeatures', instance.grammaticalFeatures?.map((e) => e?.toJson())?.toList());
  writeNotNull('etymologies', instance.etymologies);
  writeNotNull('homographNumber', instance.homographNumber);
  writeNotNull('pronunciations', instance.pronunciations?.map((e) => e?.toJson())?.toList());
  writeNotNull('senses', instance.senses?.map((e) => e?.toJson())?.toList());
  return val;
}
