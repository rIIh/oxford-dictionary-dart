import 'dart:io';

import 'package:oxford_dictionary/src/entries/model/dictionary_entry.dart';
import 'package:oxford_dictionary/src/entries/model/result.dart';
import 'package:oxford_dictionary/src/index.dart';
import 'package:test/test.dart';

void main() {
  OxfordDictionary _dictionary;

  setUp(() async {
    final appID = Platform.environment['APP_ID'];
    final appKey = Platform.environment['APP_KEY'];
    if (appID == null || appKey == null) {
      throw StateError('Please set environment variables to test apis: APP_ID and APP_KEY');
    }
    _dictionary = OxfordDictionary(
      'en',
      appID,
      appKey,
    );
    await _dictionary.entries.read('industry');
  });

  group('oxford dictionary entries', () {
    String testWord = 'industry';
    DictionaryEntries entries;
    Result result;
    setUp(() async {
      entries = await _dictionary.entries.read('industry');
      result = entries.results.first;
    });

    test('has valid structure', () {
      entries.id == testWord;
      result.id == testWord;
      print(result.lexicalEntries.first.entries.first.senses.first.definitions);
    });
  });
}
