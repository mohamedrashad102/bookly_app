import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.errorMessage);

  factory NetworkFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkFailure('Connection timeout, plz try again...');
      case DioExceptionType.sendTimeout:
        return NetworkFailure('Send timeout, plz try again...');
      case DioExceptionType.receiveTimeout:
        return NetworkFailure('Receive timeout, plz try again...');
      case DioExceptionType.badCertificate:
        return NetworkFailure('Bad certificate, plz try again...');
      case DioExceptionType.badResponse:
        return NetworkFailure.fromResponse(dioException.response!);
      case DioExceptionType.cancel:
        return NetworkFailure('Request canceled, plz try again...');
      case DioExceptionType.connectionError:
        return NetworkFailure('Connection error, plz try again...');
      case DioExceptionType.unknown:
        return NetworkFailure('Oops unexpected error, plz try again...');
    }
  }
  factory NetworkFailure.fromResponse(Response response) {
    var statusCode = response.statusCode;
    var errorMessage = response.data;
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return NetworkFailure(errorMessage.toString());
    } else if (statusCode == 404) {
      return NetworkFailure('Your request not Found, plz try again...');
    } else if (statusCode == 500) {
      return NetworkFailure('Internal server error, plz try late...');
    }
    return NetworkFailure('Oops unexpected error, plz try again...');
  }

  @override
  String toString() {
    return 'error: $errorMessage';
  }
}
