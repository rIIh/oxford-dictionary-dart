import 'package:chopper/chopper.dart';
import 'package:oxford_dictionary/src/common/cache/map_response.dart';
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
      .then(mapCachedResponse)
      .then(
        (response) => Word.fromEntry(response.body, response.base is CachedResponse),
      );
}

class CachedEntriesService extends _$EntriesService {
  final Cache cache;

  CachedEntriesService(this.cache, [ChopperClient client]) : super(client);

  @override
  Future<Response<DictionaryEntries>> _search(
    String language,
    String word,
  ) async {
    final key = 'entry_$word';
    final hasCache = (await cache?.containsKey(key)) == true;
    if (hasCache) {
      return cache.get(key).then(
            (value) => Response(
              CachedResponse(),
              value != null ? DictionaryEntries.fromJson(value) : null,
            ),
          );
    }
    final response = await super._search(language, word).catchError(
      (error) async {
        await cache?.put(key, null);
        return error;
      },
    );
    await cache?.put(key, response.body.toJson());
    return response;
  }
}
