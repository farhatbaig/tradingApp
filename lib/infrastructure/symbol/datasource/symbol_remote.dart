import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trading_app/config.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';
import 'package:trading_app/domain/symbol/error/exception_handler.dart';
import 'package:trading_app/infrastructure/core/http/http.dart';
import 'package:trading_app/infrastructure/symbol/dtos/symbol_dto.dart';

class SymbolRemoteDataSource {
  final HttpService httpService;
  final DataSourceExceptionHandler exceptionHandler;
  final Config config;

  SymbolRemoteDataSource({
    required this.httpService,
    required this.exceptionHandler,
    required this.config,
  });

  Future<List<SymbolData>> getSymbolData() async {
    return await exceptionHandler.handle(
      () async {
        final request = http.Request('GET', Uri.parse(config.getSymbolBaseUrl));
        final response = await request.send();
        final resp = await response.stream.bytesToString();
        final List<dynamic> jsonList = jsonDecode(resp);
        return jsonList
            .map((json) => SymbolDataDto.fromJson(json).toDomain())
            .toList();
      },
    );
  }
}


