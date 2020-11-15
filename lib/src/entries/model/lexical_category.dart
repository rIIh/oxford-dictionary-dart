import 'package:json_annotation/json_annotation.dart';

part 'lexical_category.g.dart';

@JsonSerializable()
class LexicalCategory implements Comparable<LexicalCategory> {
  final String id;
  final String text;

  LexicalCategory(this.id, this.text);

  factory LexicalCategory.fromJson(Map json) => _$LexicalCategoryFromJson(json);

  Map toJson() => _$LexicalCategoryToJson(this);

  @override
  int compareTo(LexicalCategory other) {
    return id.compareTo(other.id);
  }

  @override
  bool operator ==(Object other) {
    if (other is LexicalCategory) {
      return id == other.id;
    } else {
      return false;
    }
  }
}
