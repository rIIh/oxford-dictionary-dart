import 'package:json_annotation/json_annotation.dart';

part 'lexical_category.g.dart';

@JsonSerializable()
class LexicalCategory {
  final String id;
  final String text;

  LexicalCategory(this.id, this.text);

  factory LexicalCategory.fromJson(Map<String, dynamic> json) => _$LexicalCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$LexicalCategoryToJson(this);
}
