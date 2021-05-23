import 'package:json_annotation/json_annotation.dart';

import 'lemma_entry.dart';

part 'lemma_result.g.dart';

@JsonSerializable()
class LemmaResult {
  final String id;
  final String language;
  final List<LemmaEntry> lexicalEntries;
  final String? word;

  LemmaResult(this.id, this.language, this.lexicalEntries, this.word);

  factory LemmaResult.fromJson(Map json) => _$LemmaResultFromJson(json);

  Map toJson() => _$LemmaResultToJson(this);
}
