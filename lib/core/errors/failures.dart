import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        // Handle connection timeout
        return ServerFailure(
            "Connection timeout. Please check your internet connection.");

      case DioExceptionType.sendTimeout:
        // Handle send timeout
        return ServerFailure(
            "Send timeout. Unable to send data. Please try again later.");

      case DioExceptionType.receiveTimeout:
        // Handle receive timeout
        return ServerFailure(
            "Receive timeout. Unable to receive data. Please try again later.");

      case DioExceptionType.badCertificate:
        // Handle bad certificate
        return ServerFailure(
            "Invalid certificate. Please check your network settings.");

      case DioExceptionType.badResponse:
        // Handle bad response
        return ServerFailure(
            "Bad response from server. Please try again later.");

      case DioExceptionType.cancel:
        // Handle request cancellation
        return ServerFailure("Request cancelled. Please try again.");

      case DioExceptionType.connectionError:
        // Handle connection error
        return ServerFailure(
            "Connection error. Please check your internet connection.");

      case DioExceptionType.unknown:
        // Handle unknown errors
        return ServerFailure(
            "An unknown error occurred. Please try again later.");

        // defult:
        // return ServerFailure(
        //     "An unknown error occurred. Please try again later.");
    }
  }
}
