import 'dart:convert';

import 'package:oxford_dictionary/oxford_dictionary.dart';
import 'package:oxford_dictionary/src/lemmas/model/lemma_response.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final fixtures = jsonDecode(fixture('lemmas/responses.json')) as Map<String, dynamic>;

  test('Converts different lemmas successfully', () {
    for (final fixture in fixtures.entries) {
      final expectedWord = fixture.key;
      final response = fixture.value;

      if (response['code'] != 200) {
        continue;
      }

      final lemma = Lemmas.fromEntry(LemmaResponse.fromJson(response['data']));

      expect(lemma.word?.toLowerCase(), expectedWord.toLowerCase());
    }
  });
}
