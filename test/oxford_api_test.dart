import 'dart:io';

import 'package:oxford_dictionary/src/entities/word.dart';
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
      print(word.variants.entries.first);
    });
  });
}
