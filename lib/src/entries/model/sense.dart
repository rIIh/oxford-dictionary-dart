import 'package:json_annotation/json_annotation.dart';

import 'domain_class.dart';
import 'example.dart';
import 'semantic_classes.dart';

part 'sense.g.dart';

@JsonSerializable()
class Sense {
  final List<String> definitions;
  final List<DomainClass> domainClasses;
  final List<Example> examples;
  final String id;
  final List<SemanticClass> semanticClasses;
  final List<String> shortDefinitions;

  Sense(this.definitions, this.domainClasses, this.examples, this.id, this.semanticClasses, this.shortDefinitions);

  factory Sense.fromJson(Map<String, dynamic> json) => _$SenseFromJson(json);

  Map<String, dynamic> toJson() => _$SenseToJson(this);
}
