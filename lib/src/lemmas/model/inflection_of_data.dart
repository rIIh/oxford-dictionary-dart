import 'package:json_annotation/json_annotation.dart';

part 'inflection_of_data.g.dart';

@JsonSerializable()
class InflectionOfData {
  final String id;
  final String text;

  InflectionOfData(this.id, this.text);

  factory InflectionOfData.fromJson(Map json) => _$InflectionOfDataFromJson(json);
  Map toJson() => _$InflectionOfDataToJson(this);
}
