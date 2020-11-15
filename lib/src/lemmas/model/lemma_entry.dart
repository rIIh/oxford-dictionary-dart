import 'package:json_annotation/json_annotation.dart';
import 'package:oxford_dictionary/oxford_dict.dart';

import 'inflection_of_data.dart';

part 'lemma_entry.g.dart';

@JsonSerializable()
class LemmaEntry {
  final List<InflectionOfData> inflectionOf;
  final String language;
  final LexicalCategory lexicalCategory;
  final String text;

  LemmaEntry(this.inflectionOf, this.language, this.lexicalCategory, this.text);

  factory LemmaEntry.fromJson(Map json) => _$LemmaEntryFromJson(json);

  Map toJson() => _$LemmaEntryToJson(this);
}
