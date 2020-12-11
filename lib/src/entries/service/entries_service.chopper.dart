// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$EntriesService extends EntriesService {
  _$EntriesService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = EntriesService;

  @override
  Future<Response<DictionaryEntries>> _search(String language, String word) {
    final $url = '/entries/$language/$word';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DictionaryEntries, DictionaryEntries>($request);
  }
}
