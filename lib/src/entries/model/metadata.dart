import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  final String provider;
  final String? operation;
  final String? schema;

  Metadata(this.operation, this.provider, this.schema);

  factory Metadata.fromJson(Map json) => _$MetadataFromJson(json);

  Map toJson() => _$MetadataToJson(this);
}
