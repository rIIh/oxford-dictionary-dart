import 'dart:collection';

import 'package:oxford_dictionary/oxford_dict.dart' as remote;
import 'package:oxford_dictionary/src/entries/model/cross_reference.dart';
import 'package:oxford_dictionary/src/entries/model/grammatical_feature.dart';

class Word {
  final String id;
  final String word;
  final String language;
  final Map<remote.LexicalCategory, List<Variant>> variants;
  final Map<remote.LexicalCategory, List<String>> phrases;
  final remote.DictionaryEntries rawResponse;
  final bool isCached;

  Word.fromEntry(remote.DictionaryEntries entry, [this.isCached])
      : id = entry.id,
        word = entry.word,
        language = entry.results?.first?.language,
        variants = SplayTreeMap.of(
          Map.fromEntries(
            entry.results
                .map(
                  (e) => e.lexicalEntries.map(
                    (e) => MapEntry(
                      e.lexicalCategory,
                      e.entries
                          .map(
                            (e) => Variant.fromLexicalEntry(e),
                          )
                          .toList(),
                    ),
                  ),
                )
                .expand((element) => element)
                .fold<List<MapEntry<remote.LexicalCategory, List<Variant>>>>(
              [],
              (reduced, element) {
                if (reduced.map((e) => e.key).contains(element.key)) {
                  final list = reduced.firstWhere((reducedElement) => reducedElement.key == element.key).value;
                  list.addAll([...element.value]);
                  list.sort(
                    (e1, e2) => e1.grammaticalFeatures == null ? -1 : 1,
                  );
                } else {
                  reduced.add(MapEntry(element.key, element.value));
                }
                return reduced;
              },
            ),
          ),
          (k1, k2) => k1.compareTo(k2),
        ),
        phrases = Map.fromEntries(
          entry.results
              ?.where((element) => element != null)
              ?.map(
                (e) => e.lexicalEntries?.where((element) => element != null)?.map(
                      (e) => MapEntry(
                        e.lexicalCategory,
                        e.phrases?.where((element) => element != null)?.map((e) => e.text)?.toList() ?? [],
                      ),
                    ),
              )
              ?.expand((element) => element),
        ),
        rawResponse = entry;
}

class Variant {
  final List<String> etymologies;
  final String homographNumber;
  final List<GrammaticalFeature> grammaticalFeatures;
  final List<remote.Pronunciation> pronunciations;
  final List<Sense> senses;

  Variant.fromLexicalEntry(remote.LexicalEntry entry)
      : senses = entry.senses.map((e) => Sense.fromRemoteSense(e)).toList(),
        grammaticalFeatures = entry.grammaticalFeatures ?? [],
        homographNumber = entry.homographNumber,
        pronunciations = entry.pronunciations ?? [],
        etymologies = entry.etymologies ?? [];
}

class Sense {
  final List<String> definitions;
  final List<CrossReference> crossReferences;
  final List<String> shortDefinitions;
  final List<String> examples;
  final List<String> synonyms;
  final List<String> semanticClasses;
  final List<String> domains;
  final List<Sense> subSenses;
  final List<String> constructions;
  final bool isCrossReferenced;

  Sense.fromRemoteSense(remote.SenseFromRemote remoteSense)
      : definitions = remoteSense.definitions ?? remoteSense.crossReferenceMarkers ?? [],
        crossReferences = remoteSense.crossReferences ?? [],
        subSenses = remoteSense.subSenses?.map((e) => Sense.fromRemoteSense(e))?.toList() ?? [],
        constructions = remoteSense.constructions?.map((e) => e.text)?.toList() ?? [],
        synonyms = remoteSense.synonyms?.map((e) => e.text)?.toList() ?? [],
        isCrossReferenced = remoteSense.crossReferenceMarkers != null && remoteSense.definitions == null,
        shortDefinitions = remoteSense.shortDefinitions ?? [],
        examples = remoteSense.examples?.map((e) => e.text)?.toList() ?? [],
        semanticClasses = remoteSense.semanticClasses?.map((e) => e.text)?.toList() ?? [],
        domains = remoteSense.domainClasses?.map((e) => e.text)?.toList() ?? [];
}
