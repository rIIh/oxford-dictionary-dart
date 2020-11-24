import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

const oxford = 'https://od-api.oxforddictionaries.com/api/v2';

class ClientMock extends Fake implements http.Client {
  @override
  Future<http.Response> get(url, {Map<String, String> headers}) async {
    if (url == '$oxford/entries/en/industry') {
      return http.Response(
        await File('data/industry_entry.json').readAsString(),
        200,
      );
    } else if (url == '$oxford/lemmas/en/industry') {
      return http.Response(
        await File('data/industry_lemma.json').readAsString(),
        200,
      );
    } else {
      return http.Response(
        await File('data/not_found.json').readAsString(),
        404,
      );
    }
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (request.url.toString() == '$oxford/entries/en/industry') {
      return http.StreamedResponse(
        File('test/data/industry_entry.json').openRead(),
        200,
      );
    } else if (request.url.toString() == '$oxford/lemmas/en/industry') {
      return http.StreamedResponse(
        File('test/data/industry_lemma.json').openRead(),
        200,
      );
    } else {
      return http.StreamedResponse(
        File('test/data/not_found.json').openRead(),
        404,
      );
    }
  }
}
