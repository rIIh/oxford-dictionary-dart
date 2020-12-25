import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:oxford_dictionary/oxford_dict.dart';

void main() {
  find('programming').then((word) {});
}

Future<Word> find(String wordString, [http.Client client]) async {
  final dictionary = OxfordDictionary(
    'en',
    Platform.environment['APP_ID'],
    Platform.environment['APP_KEY'],
    client: client,
  );

  // get word definition entry
  final word = await dictionary.entries.search(wordString);

  print(word);

  // get phrases
  final phrases = word.phrases.values?.map((phrases) => phrases)?.expand((phrases) => phrases)?.toList();

  // get pronunciations
  final pronunciations = word.variants.values
      ?.map((e) => e.map((e) => e.pronunciations))
      ?.expand((pronunciations) => pronunciations)
      ?.toList();

  // get senses
  final senses = word.variants.values
      ?.map((variants) => variants?.map((variant) => variant.senses))
      ?.expand((senses) => senses)
      ?.toList();

  // get definitions
  final definitions = senses?.map((e) => e.map((e) => e.definitions))?.expand((definitions) => definitions)?.toList();

  // get sub senses
  final subSenses = senses?.map((e) => e.map((e) => e.subSenses))?.expand((subSenses) => subSenses)?.toList();

  print([phrases, pronunciations, senses, definitions, subSenses].join('\n'));

  return word;
}
