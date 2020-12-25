import 'package:oxford_dictionary/oxford_dictionary.dart';
import 'package:oxford_dictionary/src/entities/word.dart';
import 'package:oxford_dictionary/src/index.dart';
import 'package:test/test.dart';

import 'mock/client_mock.dart';

void main() {
  OxfordDictionary _dictionary;

  setUp(() async {
    _dictionary = OxfordDictionary(
      'en',
      'test_id',
      'test_key',
      client: ClientMock(),
    );
    // check if oxford api available
    await _dictionary.entries.search('industry');
  });

  group('oxford dictionary entries', () {
    String testWord = 'industry';
    Word word;

    setUp(() async {
      word = await _dictionary.entries.search('industry');
    });

    test('has valid structure', () {
      word.word == testWord;
      expect(
        word.variants.keys,
        contains(
          LexicalCategory('noun', 'noun'),
        ),
      );
    });
  });

  group('oxford dictionary entries', () {
    String testWord = 'industry';
    Lemmas lemmas;

    setUp(() async {
      lemmas = await _dictionary.lemmas.search('industry');
    });

    test('has valid structure', () {
      lemmas.word == testWord;
      expect(lemmas.inflections, hasLength(1));
    });
  });
}
