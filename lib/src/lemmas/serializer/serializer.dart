import 'package:oxford_dictionary/src/lemmas/model/lemma_response.dart';

import '../../utils/json_serializer.dart';

// ignore: avoid_classes_with_only_static_members
class LemmasFactories {
  static Map<Type, JsonFactory> get create => {LemmaResponse: (json) => LemmaResponse.fromJson(json)};
}
