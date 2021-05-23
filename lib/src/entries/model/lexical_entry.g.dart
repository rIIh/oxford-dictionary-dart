// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexicalEntry _$LexicalEntryFromJson(Map json) {
  return LexicalEntry(
    (json['grammaticalFeatures'] as List<dynamic>?)
        ?.map((e) => GrammaticalFeature.fromJson(e as Map))
        .toList(),
    (json['crossReferenceMarkers'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    (json['crossReferences'] as List<dynamic>?)
        ?.map((e) => CrossReference.fromJson(e as Map))
        .toList(),
    (json['etymologies'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['homographNumber'] as String?,
    (json['pronunciations'] as List<dynamic>?)
        ?.map((e) => Pronunciation.fromJson(e as Map))
        .toList(),
    (json['senses'] as List<dynamic>?)
        ?.map((e) => SenseFromRemote.fromJson(e as Map))
        .toList(),
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
  writeNotNull('crossReferences',
      instance.crossReferences?.map((e) => e.toJson()).toList());
  writeNotNull('grammaticalFeatures',
      instance.grammaticalFeatures?.map((e) => e.toJson()).toList());
  writeNotNull('etymologies', instance.etymologies);
  writeNotNull('homographNumber', instance.homographNumber);
  writeNotNull('pronunciations',
      instance.pronunciations?.map((e) => e.toJson()).toList());
  writeNotNull('senses', instance.senses?.map((e) => e.toJson()).toList());
  return val;
}
