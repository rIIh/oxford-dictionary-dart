import 'package:json_annotation/json_annotation.dart';

part 'cross_reference.g.dart';

@JsonSerializable()
class CrossReference {
  final String id;
  final String text;
  final String type;

  CrossReference(this.id, this.text, this.type);

  factory CrossReference.fromJson(Map json) => _$CrossReferenceFromJson(json);

  Map toJson() => _$CrossReferenceToJson(this);
}
