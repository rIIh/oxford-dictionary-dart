// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inflection_of_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InflectionOfData _$InflectionOfDataFromJson(Map json) {
  return InflectionOfData(
    json['id'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$InflectionOfDataToJson(InflectionOfData instance) {
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
