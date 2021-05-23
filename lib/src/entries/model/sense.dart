import 'package:json_annotation/json_annotation.dart';
import 'package:oxford_dictionary/src/entries/model/synonim.dart';

import 'cross_reference.dart';
import 'domain_class.dart';
import 'example.dart';
import 'semantic_classes.dart';

part 'sense.g.dart';

@JsonSerializable()
class Construction {
  final String text;

  Construction(this.text);

  factory Construction.fromJson(Map json) => _$ConstructionFromJson(json);

  Map toJson() => _$ConstructionToJson(this);
}

@JsonSerializable()
class SenseFromRemote {
  final String id;
  final List<Construction>? constructions;
  final List<String>? definitions;
  final List<DomainClass>? domainClasses;
  final List<Example>? examples;
  final List<Synonym>? synonyms;
  final List<SemanticClass>? semanticClasses;
  final List<String>? shortDefinitions;
  final List<String>? crossReferenceMarkers;
  final List<CrossReference>? crossReferences;
  @JsonKey(name: 'subsenses')
  final List<SenseFromRemote>? subSenses;

  SenseFromRemote(
    this.id,
    this.definitions,
    this.domainClasses,
    this.examples,
    this.semanticClasses,
    this.shortDefinitions,
    this.crossReferenceMarkers,
    this.crossReferences,
    this.subSenses,
    this.constructions,
    this.synonyms,
  );

  factory SenseFromRemote.fromJson(Map json) => _$SenseFromRemoteFromJson(json);

  Map toJson() => _$SenseFromRemoteToJson(this);
}
