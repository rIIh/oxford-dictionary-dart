import 'package:json_annotation/json_annotation.dart';

part 'phrase.g.dart';

@JsonSerializable()
class Phrase {
  final String id;
  final String text;

  Phrase(this.id, this.text);

  factory Phrase.fromJson(Map json) => _$PhraseFromJson(json);

  Map toJson() => _$PhraseToJson(this);
}
