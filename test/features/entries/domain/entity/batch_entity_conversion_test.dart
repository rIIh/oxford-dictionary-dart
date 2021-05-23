import 'dart:convert';

import 'package:oxford_dictionary/oxford_dictionary.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final fixtures = jsonDecode(fixture('entries/responses.json')) as Map<String, dynamic>;

  test('Converts different entries successfully', () {
    for (final fixture in fixtures.entries) {
      final expectedWord = fixture.key;
      final response = fixture.value;

      if (response['code'] != 200) {
        continue;
      }

      final word = Word.fromEntry(DictionaryEntries.fromJson(response['data']));

      expect(word.word.toLowerCase(), expectedWord.toLowerCase());
    }
  });
}
