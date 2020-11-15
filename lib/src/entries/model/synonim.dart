import 'package:json_annotation/json_annotation.dart';

part 'synonim.g.dart';

@JsonSerializable()
class Synonym {
  final String language;
  final String text;

  Synonym(this.language, this.text);

  factory Synonym.fromJson(Map json) => _$SynonymFromJson(json);

  Map toJson() => _$SynonymToJson(this);
}
