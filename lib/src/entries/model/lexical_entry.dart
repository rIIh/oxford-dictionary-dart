import 'package:json_annotation/json_annotation.dart';

import 'pronunciation.dart';
import 'sense.dart';

part 'lexical_entry.g.dart';

@JsonSerializable()
class LexicalEntry {
  final List<String> etymologies;
  final String homographNumber;
  final List<Pronunciation> pronunciations;
  final List<Sense> senses;

  LexicalEntry({this.etymologies, this.homographNumber, this.pronunciations, this.senses});

  factory LexicalEntry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
