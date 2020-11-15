import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';
import 'package:oxford_dictionary/src/lemmas/serializer/serializer.dart';
import 'package:oxford_dictionary/src/lemmas/service/lemmas_service.dart';
import 'package:stash/stash_api.dart';
import 'package:stash_disk/stash_disk.dart';

import 'entries/serializer/serializer.dart';
import 'entries/service/entries_service.dart';
import 'utils/json_serializer.dart';

class OxfordDictionary {
  OxfordDictionary(this.language, String appId, String appKey)
      : cache = newLocalDiskCache(
          cacheName: 'oxford-dictionary',
          maxEntries: 100,
          expiryPolicy: ModifiedExpiryPolicy(
            Duration(
              days: 1,
            ),
          ),
        ) {
    _client = ChopperClient(
      baseUrl: 'https://od-api.oxforddictionaries.com/api/v2',
      client: IOClient(),
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

  EntriesServiceImpl get entries => _client.getService<EntriesService>();

  LemmasServiceImpl get lemmas => _client.getService<LemmasService>();

  final Cache cache;
}
