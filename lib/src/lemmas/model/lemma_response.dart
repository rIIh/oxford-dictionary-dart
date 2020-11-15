
import 'package:json_annotation/json_annotation.dart';
import 'package:oxford_dictionary/src/entries/model/metadata.dart';

import 'lemma_result.dart';

part 'lemma_response.g.dart';

@JsonSerializable()
class LemmaResponse {
  final Metadata metadata;
  final List<LemmaResult> results;

  LemmaResponse(this.metadata, this.results);

  factory LemmaResponse.fromJson(Map json) => _$LemmaResponseFromJson(json);
  Map toJson() => _$LemmaResponseToJson(this);
}
