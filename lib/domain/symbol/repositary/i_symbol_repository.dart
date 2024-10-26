import 'package:dartz/dartz.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';
import 'package:trading_app/domain/symbol/error/api_failures.dart';

abstract class ISymbolRepository {
  Future<Either<ApiFailure, List<SymbolData>>> getSymbolData();
}
