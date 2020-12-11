// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexicalCategory _$LexicalCategoryFromJson(Map json) {
  return LexicalCategory(
    json['id'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$LexicalCategoryToJson(LexicalCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  return val;
}
