import 'package:json_annotation/json_annotation.dart';

part 'phrase.g.dart';

@JsonSerializable()
class Phrase {
  final String id;
  final String text;

  Phrase(this.id, this.text);

  factory Phrase.fromJson(Map<String, dynamic> json) => _$PhraseFromJson(json);

  Map<String, dynamic> toJson() => _$PhraseToJson(this);
}
