import 'package:json_annotation/json_annotation.dart';

part 'grammatical_feature.g.dart';

@JsonSerializable()
class GrammaticalFeature {
  final String id;
  final String text;
  final String type;

  GrammaticalFeature(this.id, this.text, this.type);

  factory GrammaticalFeature.fromJson(Map json) => _$GrammaticalFeatureFromJson(json);

  Map toJson() => _$GrammaticalFeatureToJson(this);
}
