import 'package:json_annotation/json_annotation.dart';

part 'pronunciation.g.dart';

@JsonSerializable()
class Pronunciation {
  final String audioFile;
  final List<String> dialects;
  final String phoneticNotation;
  final String phoneticSpelling;

  Pronunciation(this.audioFile, this.dialects, this.phoneticNotation, this.phoneticSpelling);

  factory Pronunciation.fromJson(Map<String, dynamic> json) => _$PronunciationFromJson(json);

  Map<String, dynamic> toJson() => _$PronunciationToJson(this);
}
