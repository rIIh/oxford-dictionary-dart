import 'package:json_annotation/json_annotation.dart';

part 'example.g.dart';

@JsonSerializable()
class Example {
  final String text;

  Example(this.text);

  factory Example.fromJson(Map json) => _$ExampleFromJson(json);

  Map toJson() => _$ExampleToJson(this);
}
