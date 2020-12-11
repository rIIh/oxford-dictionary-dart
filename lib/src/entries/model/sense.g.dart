// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Construction _$ConstructionFromJson(Map json) {
  return Construction(
    json['text'] as String,
  );
}

Map<String, dynamic> _$ConstructionToJson(Construction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  return val;
}

SenseFromRemote _$SenseFromRemoteFromJson(Map json) {
  return SenseFromRemote(
    (json['definitions'] as List)?.map((e) => e as String)?.toList(),
    (json['domainClasses'] as List)?.map((e) => e == null ? null : DomainClass.fromJson(e as Map))?.toList(),
    (json['examples'] as List)?.map((e) => e == null ? null : Example.fromJson(e as Map))?.toList(),
    json['id'] as String,
    (json['semanticClasses'] as List)?.map((e) => e == null ? null : SemanticClass.fromJson(e as Map))?.toList(),
    (json['shortDefinitions'] as List)?.map((e) => e as String)?.toList(),
    (json['crossReferenceMarkers'] as List)?.map((e) => e as String)?.toList(),
    (json['crossReferences'] as List)?.map((e) => e == null ? null : CrossReference.fromJson(e as Map))?.toList(),
    (json['subsenses'] as List)?.map((e) => e == null ? null : SenseFromRemote.fromJson(e as Map))?.toList(),
    (json['constructions'] as List)?.map((e) => e == null ? null : Construction.fromJson(e as Map))?.toList(),
    (json['synonyms'] as List)?.map((e) => e == null ? null : Synonym.fromJson(e as Map))?.toList(),
  );
}

Map<String, dynamic> _$SenseFromRemoteToJson(SenseFromRemote instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('constructions', instance.constructions?.map((e) => e?.toJson())?.toList());
  writeNotNull('definitions', instance.definitions);
  writeNotNull('domainClasses', instance.domainClasses?.map((e) => e?.toJson())?.toList());
  writeNotNull('examples', instance.examples?.map((e) => e?.toJson())?.toList());
  writeNotNull('synonyms', instance.synonyms?.map((e) => e?.toJson())?.toList());
  writeNotNull('id', instance.id);
  writeNotNull('semanticClasses', instance.semanticClasses?.map((e) => e?.toJson())?.toList());
  writeNotNull('shortDefinitions', instance.shortDefinitions);
  writeNotNull('crossReferenceMarkers', instance.crossReferenceMarkers);
  writeNotNull('crossReferences', instance.crossReferences?.map((e) => e?.toJson())?.toList());
  writeNotNull('subsenses', instance.subSenses?.map((e) => e?.toJson())?.toList());
  return val;
}
