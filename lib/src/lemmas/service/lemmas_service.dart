import 'package:chopper/chopper.dart';
import 'package:oxford_dictionary/src/lemmas/entity/lemmas.dart';
import 'package:oxford_dictionary/src/lemmas/model/lemma_response.dart';
import 'package:oxford_dictionary/src/utils/io/cached_response.dart';
import 'package:oxford_dictionary/src/utils/response.dart';
import 'package:stash/stash_api.dart';

part 'lemmas_service.chopper.dart';

// ignore_for_file: unused_element
@ChopperApi(baseUrl: "/lemmas")
abstract class LemmasService extends ChopperService {
  @Get(path: '/{language}/{word_id}')
  Future<Response<LemmaResponse>> _search(@Path('language') String language, @Path('word_id') String word);
}

class LemmasServiceImpl extends CachedLemmasService {
  final String language;

  LemmasServiceImpl(this.language, [Cache cache, ChopperClient client]) : super(cache, client);

  Future<Lemmas> search(String word) async => super
      ._search(
        language,
        word,
      )
      .then(mapResponse)
      .then(
        (value) => Lemmas.fromEntry(value),
      );
}

class CachedLemmasService extends _$LemmasService {
  final Cache cache;

  CachedLemmasService(this.cache, [ChopperClient client]) : super(client);

  @override
  Future<Response<LemmaResponse>> _search(String language, String word) async {
    final key = 'lemma_$word';
    final hasCache = await cache?.containsKey(key) == true;
    if (hasCache) {
      return cache.get(key).then(
            (value) => Response(
              CachedResponse(),
              LemmaResponse.fromJson(value),
            ),
          );
    }
    final response = await super._search(language, word);
    cache.put(key, response.body);
    return response;
  }
}
