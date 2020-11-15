import 'package:json_annotation/json_annotation.dart';

import 'lexical_entries.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  final String id;
  final String language;
  final List<LexicalEntries> lexicalEntries;
  final String type;
  final String word;

  Result(this.id, this.language, this.lexicalEntries, this.type, this.word);

  factory Result.fromJson(Map json) => _$ResultFromJson(json);

  Map toJson() => _$ResultToJson(this);
}
