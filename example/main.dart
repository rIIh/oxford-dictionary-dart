import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:oxford_dictionary/oxford_dictionary.dart';

void main() {
  find('programming').then((word) {});
}

Future<Word?> find(String wordString, [http.Client? client]) async {
  final dictionary = OxfordDictionary(
    'en',
    Platform.environment['APP_ID'] ?? 'test_app_id',
    Platform.environment['APP_KEY'] ?? 'test_app_key',
    client: client,
  );

  // get word definition entry
  final word = await dictionary.entries.search(wordString).then((value) => value!);

  print(word);

  // get phrases
  final phrases = word.phrases.values.map((phrases) => phrases).expand((phrases) => phrases).toList();

  // get pronunciations
  final pronunciations = word.variants.values
      .map((e) => e.map((e) => e.pronunciations))
      .expand((pronunciations) => pronunciations)
      .toList();

  // get senses
  final senses = word.variants.values
      .map((variants) => variants.map((variant) => variant.senses))
      .expand((senses) => senses)
      .toList();

  // get definitions
  final definitions = senses.map((e) => e.map((e) => e.definitions)).expand((definitions) => definitions).toList();

  // get sub senses
  final subSenses = senses.map((e) => e.map((e) => e.subSenses)).expand((subSenses) => subSenses).toList();

  print([phrases, pronunciations, senses, definitions, subSenses].join('\n'));

  return word;
}

Future<Lemmas?> findLemmas(String wordString, [http.Client? client]) async {
  final dictionary = OxfordDictionary(
    'en',
    Platform.environment['APP_ID'] ?? 'test_app_id',
    Platform.environment['APP_KEY'] ?? 'test_app_key',
    client: client,
  );

  final lemmas = await dictionary.lemmas.search(wordString).then((value) => value!);

  print(lemmas);

  for (final inflection in lemmas.inflections.entries) {
    final category = inflection.key;
    final inflectionsByCategory = inflection.value;

    print("Searching words defenitions for inflections of ${wordString} for ${category.text} category");

    final wordsForCategory = await Future.wait(
      inflectionsByCategory.map((e) => find(e.text)).toList(),
    );

    print(wordsForCategory.whereType<Word>().map((e) => e.variants).join(', '));
  }

  return lemmas;
}
