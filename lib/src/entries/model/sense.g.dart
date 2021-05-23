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

Map<String, dynamic> _$ConstructionToJson(Construction instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

SenseFromRemote _$SenseFromRemoteFromJson(Map json) {
  return SenseFromRemote(
    json['id'] as String,
    (json['definitions'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['domainClasses'] as List<dynamic>?)
        ?.map((e) => DomainClass.fromJson(e as Map))
        .toList(),
    (json['examples'] as List<dynamic>?)
        ?.map((e) => Example.fromJson(e as Map))
        .toList(),
    (json['semanticClasses'] as List<dynamic>?)
        ?.map((e) => SemanticClass.fromJson(e as Map))
        .toList(),
    (json['shortDefinitions'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    (json['crossReferenceMarkers'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    (json['crossReferences'] as List<dynamic>?)
        ?.map((e) => CrossReference.fromJson(e as Map))
        .toList(),
    (json['subsenses'] as List<dynamic>?)
        ?.map((e) => SenseFromRemote.fromJson(e as Map))
        .toList(),
    (json['constructions'] as List<dynamic>?)
        ?.map((e) => Construction.fromJson(e as Map))
        .toList(),
    (json['synonyms'] as List<dynamic>?)
        ?.map((e) => Synonym.fromJson(e as Map))
        .toList(),
  );
}

Map<String, dynamic> _$SenseFromRemoteToJson(SenseFromRemote instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'constructions', instance.constructions?.map((e) => e.toJson()).toList());
  writeNotNull('definitions', instance.definitions);
  writeNotNull(
      'domainClasses', instance.domainClasses?.map((e) => e.toJson()).toList());
  writeNotNull('examples', instance.examples?.map((e) => e.toJson()).toList());
  writeNotNull('synonyms', instance.synonyms?.map((e) => e.toJson()).toList());
  writeNotNull('semanticClasses',
      instance.semanticClasses?.map((e) => e.toJson()).toList());
  writeNotNull('shortDefinitions', instance.shortDefinitions);
  writeNotNull('crossReferenceMarkers', instance.crossReferenceMarkers);
  writeNotNull('crossReferences',
      instance.crossReferences?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subsenses', instance.subSenses?.map((e) => e.toJson()).toList());
  return val;
}
