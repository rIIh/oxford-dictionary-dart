// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semantic_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SemanticClass _$SemanticClassFromJson(Map json) {
  return SemanticClass(
    json['id'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$SemanticClassToJson(SemanticClass instance) {
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
