// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainClass _$DomainClassFromJson(Map json) {
  return DomainClass(
    json['id'] as String,
    json['text'] as String?,
  );
}

Map<String, dynamic> _$DomainClassToJson(DomainClass instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  return val;
}
