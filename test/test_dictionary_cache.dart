import 'package:oxford_dictionary/oxford_dictionary.dart';
import 'package:stash/stash_api.dart';
import 'package:stash/stash_memory.dart';
import 'package:test/test.dart';

import 'mock/client_mock.dart';

void main() {
  Cache cache;
  OxfordDictionary oxfordDictionary;

  setUp(() {
    cache ??= newMemoryCache(
      maxEntries: 10,
      expiryPolicy: EternalExpiryPolicy(),
    );
    try {
      cache.clear();
    } catch (_) {}
    oxfordDictionary = OxfordDictionary(
      'en',
      'test_id',
      'test_key',
      cache: cache,
      client: ClientMock(),
    );
  });

  test('cache works as expected', () async {
    final hasKey_1 = await cache.containsKey('key');
    expect(hasKey_1, isFalse);

    await cache.put('key', 'value');
    final hasKey_2 = await cache.containsKey('key');
    final value = await cache.get('key');

    expect(hasKey_2, isTrue);
    expect(value, equals('value'));
  });

  test('get cached response', () async {
    final first_response = await oxfordDictionary.entries.search('industry');
    expect(first_response.isCached, isFalse);

    final second_response = await oxfordDictionary.entries.search('industry');
    expect(second_response.isCached, isTrue);
  });
}
