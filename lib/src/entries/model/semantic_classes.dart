import 'package:json_annotation/json_annotation.dart';

part 'semantic_classes.g.dart';

@JsonSerializable()
class SemanticClass {
  final String id;
  final String text;

  SemanticClass(this.id, this.text);

  factory SemanticClass.fromJson(Map json) => _$SemanticClassFromJson(json);

  Map toJson() => _$SemanticClassToJson(this);
}
