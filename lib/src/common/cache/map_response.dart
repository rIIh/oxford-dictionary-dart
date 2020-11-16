import 'package:chopper/chopper.dart';
import 'package:oxford_dictionary/src/common/exception/cache_exception.dart';
import 'package:oxford_dictionary/src/utils/io/cached_response.dart';

Response<T> mapCachedResponse<T>(Response<T> response) {
  if (response.body == null && response.base is CachedResponse) {
    throw CachedValueIsEmptyException();
  }
  return response;
}