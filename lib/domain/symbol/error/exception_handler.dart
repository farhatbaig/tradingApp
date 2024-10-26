import 'dart:async';

class DataSourceExceptionHandler {
  Future<dynamic> handle(
    Function function,
  ) async {
    try {
      return await function();
    } catch (e) {
      rethrow;
    }
  }
}
