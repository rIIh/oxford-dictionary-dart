import 'package:json_annotation/json_annotation.dart';

part 'pronunciation.g.dart';

@JsonSerializable()
class Pronunciation {
  final String? audioFile;
  final String? phoneticNotation;
  final String? phoneticSpelling;
  final List<String>? dialects;

  Pronunciation(this.audioFile, this.dialects, this.phoneticNotation, this.phoneticSpelling);

  factory Pronunciation.fromJson(Map json) => _$PronunciationFromJson(json);

  Map toJson() => _$PronunciationToJson(this);
}
