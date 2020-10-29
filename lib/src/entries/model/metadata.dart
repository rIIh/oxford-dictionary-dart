import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  final String operation;
  final String provider;
  final String schema;

  Metadata(this.operation, this.provider, this.schema);

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
