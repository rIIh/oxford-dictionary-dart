// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemmas_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LemmasService extends LemmasService {
  _$LemmasService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LemmasService;

  @override
  Future<Response<LemmaResponse>> _search(String language, String word) {
    final $url = '/lemmas/$language/$word';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LemmaResponse, LemmaResponse>($request);
  }
}
