import 'package:chopper/chopper.dart';
import 'package:oxford_dictionary/src/entries/model/dictionary_entry.dart';
import 'package:oxford_dictionary/src/utils/response.dart';

part 'entries_service.chopper.dart';

// ignore_for_file: unused_element
@ChopperApi(baseUrl: "/entries")
abstract class EntriesService extends ChopperService {
  @Get(path: '/{language}/{word_id}')
  Future<Response<DictionaryEntries>> _read(@Path('language') String language, @Path('word_id') String word);
}

class EntriesServiceImpl extends _$EntriesService {
  final String language;

  EntriesServiceImpl(this.language, [ChopperClient client]) : super(client);

  Future<DictionaryEntries> read(String word) async => super._read(language, word).then(mapResponse);
}