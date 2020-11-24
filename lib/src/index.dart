import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:oxford_dictionary/src/lemmas/serializer/serializer.dart';
import 'package:oxford_dictionary/src/lemmas/service/lemmas_service.dart';
import 'package:stash/stash_api.dart';

import 'entries/serializer/serializer.dart';
import 'entries/service/entries_service.dart';
import 'utils/json_serializer.dart';

/// Oxford dictionary entry point.
///
/// To access Oxford Dictionary you need to provide [appId] and [appKey]
///
/// To get word entry use [entries]
///
/// To get lemmas of word use [lemmas]
///
/// You can use [Cache] from `stash` package to cache remote responses.
///
/// {@template oxford_doc_information}
/// Visit official [Oxford API documentation](https://developer.oxforddictionaries.com/documentation)
/// {@endtemplate}
class OxfordDictionary {
  OxfordDictionary(
    this.language,
    String appId,
    String appKey, {
    this.cache,
    http.Client client,
  }) {
    _client = ChopperClient(
      baseUrl: 'https://od-api.oxforddictionaries.com/api/v2',
      client: client ?? IOClient(),
      interceptors: [
        HeadersInterceptor({
          'app_id': appId,
          'app_key': appKey,
        }),
      ],
      services: [
        EntriesServiceImpl(language, cache),
        LemmasServiceImpl(language, cache),
      ],
      converter: JsonSerializableConverter({
        ...EntriesFactories.create,
        ...LemmasFactories.create,
      }),
    );
  }

  final String language;

  ChopperClient _client;

  /// Service to access `entries` endpoint in Oxford API
  ///
  /// {@macro oxford_doc_information}
  ///
  /// Use this to retrieve definitions, pronunciations, example sentences, grammatical information and word origins
  EntriesServiceImpl get entries => _client.getService<EntriesService>();

  /// Service to access `lemmas` endpoint in Oxford API
  ///
  /// {@macro oxford_doc_information}
  ///
  /// Use this to check if a word exists in the dictionary, or what 'root' form it links to (e.g., swimming > swim).
  /// The response tells you the possible lemmas for a given inflected word.
  /// This can then be combined with other endpoints to retrieve more information.
  LemmasServiceImpl get lemmas => _client.getService<LemmasService>();

  final Cache cache;
}
