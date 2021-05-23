import 'package:json_annotation/json_annotation.dart';

import 'lexical_entry.dart';
import 'lexical_category.dart';
import 'phrase.dart';

part 'lexical_entries.g.dart';

@JsonSerializable()
class LexicalEntries {
  final List<LexicalEntry> entries;
  final String language;
  final LexicalCategory lexicalCategory;
  final List<Phrase>? phrases;
  final String? text;

  LexicalEntries(this.entries, this.language, this.lexicalCategory, this.phrases, this.text);

  factory LexicalEntries.fromJson(Map json) => _$LexicalEntriesFromJson(json);

  Map toJson() => _$LexicalEntriesToJson(this);
}
