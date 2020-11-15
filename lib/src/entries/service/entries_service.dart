import 'package:chopper/chopper.dart';
import 'package:oxford_dictionary/src/entities/word.dart';
import 'package:oxford_dictionary/src/entries/model/dictionary_entry.dart';
import 'package:oxford_dictionary/src/utils/io/cached_response.dart';
import 'package:oxford_dictionary/src/utils/response.dart';
import 'package:stash/stash_api.dart';

part 'entries_service.chopper.dart';

// ignore_for_file: unused_element
@ChopperApi(baseUrl: "/entries")
abstract class EntriesService extends ChopperService {
  @Get(path: '/{language}/{word_id}')
  Future<Response<DictionaryEntries>> _search(@Path('language') String language, @Path('word_id') String word);
}

class EntriesServiceImpl extends CachedEntriesService {
  final String language;

  EntriesServiceImpl(this.language, [Cache cache, ChopperClient client]) : super(cache, client);

  Future<Word> search(String word) async => super
      ._search(
        language,
        word,
      )
      .then(mapResponse)
      .then(
        (value) => Word.fromEntry(value),
      );
}

class CachedEntriesService extends _$EntriesService {
  final Cache cache;

  CachedEntriesService(this.cache, [ChopperClient client]) : super(client);

  @override
  Future<Response<DictionaryEntries>> _search(String language, String word) async {
    final key = 'entry_$word';
    final hasCache = await cache?.containsKey(key) == true;
    if (hasCache) {
      return cache.get(key).then(
            (value) => Response(
              CachedResponse(),
              DictionaryEntries.fromJson(value),
            ),
          );
    }
    final response = await super._search(language, word);
    cache.put(key, response.body);
    return response;
  }
}
