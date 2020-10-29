import 'package:chopper/chopper.dart';

T mapResponse<T>(Response<T> response) {
  if (response.isSuccessful) {
    return response.body;
  } else {
    throw RequestFailedException(response.statusCode);
  }
}

class RequestFailedException implements Exception {
  final int statusCode;

  RequestFailedException(this.statusCode);
}
