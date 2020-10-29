import 'package:json_annotation/json_annotation.dart';

part 'domain_class.g.dart';

@JsonSerializable()
class DomainClass {
  final String id;
  final String text;

  DomainClass(this.id, this.text);

  factory DomainClass.fromJson(Map<String, dynamic> json) => _$DomainClassFromJson(json);

  Map<String, dynamic> toJson() => _$DomainClassToJson(this);
}
