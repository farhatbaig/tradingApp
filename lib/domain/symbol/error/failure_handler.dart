import 'package:flutter/services.dart';
import 'package:trading_app/domain/symbol/error/api_failures.dart';
import 'package:trading_app/domain/symbol/error/exception.dart';

class FailureHandler {
  static void nullableFailure(String path, Map<String, dynamic> details) {
  
  }
  static ApiFailure handleFailure(
    Object error,
    StackTrace stackTrace, {
    String? apiEndPoint,
    String? functionName,
    bool sendToSentry = true,
  }) {
      switch (error.runtimeType) {
        case CacheException _:
          return ApiFailure.other((error as CacheException).message);
        case ServerException _:
          final message = (error as ServerException).message;
          return ApiFailure.serverError(message);
        case PlatformException _:
          return ApiFailure.other('${(error as PlatformException).message}');
        case OtherException _:
          return ApiFailure.other((error as OtherException).message);
        default:
          return ApiFailure.other(error.toString());
      }
  }
}
