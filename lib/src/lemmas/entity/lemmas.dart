import 'package:oxford_dictionary/oxford_dictionary.dart';
import 'package:oxford_dictionary/src/lemmas/model/inflection_of_data.dart';
import 'package:oxford_dictionary/src/lemmas/model/lemma_entry.dart';
import 'package:oxford_dictionary/src/lemmas/model/lemma_response.dart';
import 'package:oxford_dictionary/src/utils/iterable/expand.dart';
import 'package:oxford_dictionary/src/utils/iterable/iterable_extension.dart';
import 'package:oxford_dictionary/src/utils/iterable/merge_map_entries.dart';

class Lemmas {
  final String? word;
  final Map<LexicalCategory, List<InflectionOfData>> inflections;
  final LemmaResponse rawResponse;
  final bool isCached;

  Lemmas.fromEntry(LemmaResponse lemmaResponse, [this.isCached = false])
      : rawResponse = lemmaResponse,
        word = lemmaResponse.results
            .firstWhereOrNull(
              (element) => element.word != null,
            )
            ?.word,
        inflections = Map.fromEntries(
          lemmaResponse.results
              .map(
                (e) => e.lexicalEntries.whereType<LemmaEntry>().map(
                      (e) => MapEntry(
                        e.lexicalCategory,
                        e.inflectionOf,
                      ),
                    ),
              )
              .flatten()
              .mergeValues()
              .map(
                (e) => MapEntry(
                  e.key,
                  e.value.toList(),
                ),
              ),
        );
}
