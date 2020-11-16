import 'package:chopper/chopper.dart';

Response<T> mapResponse<T>(Response<T> response) {
  if (response.isSuccessful) {
    return response;
  }
  throw RequestFailedException(response.statusCode);
}

class RequestFailedException implements Exception {
  final int statusCode;

  RequestFailedException(this.statusCode);
}
