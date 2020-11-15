import 'package:json_annotation/json_annotation.dart';

import 'metadata.dart';
import 'result.dart';

part 'dictionary_entry.g.dart';

@JsonSerializable()
class DictionaryEntries {
  final String id;
  final Metadata metadata;
  final List<Result> results;
  final String word;

  DictionaryEntries({this.id, this.metadata, this.results, this.word});

  factory DictionaryEntries.fromJson(Map json) => _$DictionaryEntriesFromJson(json);

  Map toJson() => _$DictionaryEntriesToJson(this);
}
