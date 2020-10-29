import 'package:json_annotation/json_annotation.dart';

import 'pronunciation.dart';
import 'sense.dart';

part 'entry.g.dart';

@JsonSerializable()
class Entry {
  final List<String> etymologies;
  final String homographNumber;
  final List<Pronunciation> pronunciations;
  final List<Sense> senses;

  Entry({this.etymologies, this.homographNumber, this.pronunciations, this.senses});

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
