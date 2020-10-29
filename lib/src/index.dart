import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';

import 'entries/serializer/serializer.dart';
import 'entries/service/entries_service.dart';
import 'utils/json_serializer.dart';

class OxfordDictionary {
  OxfordDictionary(this.language, String appId, String appKey) {
    _client = ChopperClient(
      baseUrl: 'https://od-api.oxforddictionaries.com/api/v2',
      client: IOClient(),
      interceptors: [
        (request) async {
          return applyHeaders(request, {
            'app_id': appId,
            'app_key': appKey,
          });
        },
      ],
      services: [
        EntriesServiceImpl(language),
      ],
      converter: JsonSerializableConverter({
        ...EntriesFactories.create,
      }),
    );
  }

  final String language;

  ChopperClient _client;

  EntriesServiceImpl get entries => _client.getService<EntriesService>();
}
