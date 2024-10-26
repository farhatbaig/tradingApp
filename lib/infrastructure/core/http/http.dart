import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:trading_app/config.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required Config config,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: config.getSymbolBaseUrl,
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {},
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      _dio.options.method = method;
      _dio.options.responseType = responseType;

      debugPrint('dio.request: $url');
      final response = await _dio.request(
        url,
        data: data,
      );
      debugPrint('dio.response: ${response.statusCode} $url');

      return response;
    } on DioException catch (e) {
      throw e.error!;
    }
  }
}
