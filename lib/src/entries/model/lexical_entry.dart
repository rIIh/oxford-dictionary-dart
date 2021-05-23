import 'package:json_annotation/json_annotation.dart';
import 'package:oxford_dictionary/src/entries/model/cross_reference.dart';

import 'grammatical_feature.dart';
import 'pronunciation.dart';
import 'sense.dart';

part 'lexical_entry.g.dart';

@JsonSerializable()
class LexicalEntry {
  final List<String>? crossReferenceMarkers;
  final List<CrossReference>? crossReferences;
  final List<GrammaticalFeature>? grammaticalFeatures;
  final List<String>? etymologies;
  final String? homographNumber;
  final List<Pronunciation>? pronunciations;
  final List<SenseFromRemote>? senses;

  LexicalEntry(
    this.grammaticalFeatures,
    this.crossReferenceMarkers,
    this.crossReferences,
    this.etymologies,
    this.homographNumber,
    this.pronunciations,
    this.senses,
  );

  factory LexicalEntry.fromJson(Map<String, dynamic> json) => _$LexicalEntryFromJson(json);

  Map<String, dynamic> toJson() => _$LexicalEntryToJson(this);
}
