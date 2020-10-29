import 'package:json_annotation/json_annotation.dart';

part 'example.g.dart';

@JsonSerializable()
class Example {
  final String text;

  Example(this.text);

  factory Example.fromJson(Map<String, dynamic> json) => _$ExampleFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleToJson(this);
}
