// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metadata _$MetadataFromJson(Map json) {
  return Metadata(
    json['operation'] as String,
    json['provider'] as String,
    json['schema'] as String,
  );
}

Map<String, dynamic> _$MetadataToJson(Metadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operation', instance.operation);
  writeNotNull('provider', instance.provider);
  writeNotNull('schema', instance.schema);
  return val;
}
