import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:trading_app/config.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';
import 'package:trading_app/domain/symbol/error/api_failures.dart';
import 'package:trading_app/domain/symbol/error/failure_handler.dart';
import 'package:trading_app/domain/symbol/repositary/i_symbol_repository.dart';
import 'package:trading_app/infrastructure/symbol/datasource/symbol_remote.dart';

class SymbolRepository implements ISymbolRepository {
  final SymbolRemoteDataSource symbolRemoteDataSource;
  final Config config;


  SymbolRepository({
    required this.symbolRemoteDataSource,
    required this.config,
  });
  
  @override
  Future<Either<ApiFailure, List<SymbolData>>> getSymbolData() async {
    try {
      final symbolData = await symbolRemoteDataSource.getSymbolData();
      return Right(symbolData);
    } catch (e, s) {
      return Left(FailureHandler.handleFailure(e, s,
          apiEndPoint: config.getSymbolBaseUrl,
          functionName: 'getSymbolData'));
    }
  }
  
}
