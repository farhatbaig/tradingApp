import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/application/trading_bloc/trading_bloc.dart';
import 'package:trading_app/application/trading_bloc/trading_event.dart';
import 'package:trading_app/domain/symbol/error/exception_handler.dart';
import 'package:trading_app/infrastructure/core/http/http.dart';
import 'package:trading_app/infrastructure/symbol/datasource/symbol_remote.dart';
import 'package:trading_app/infrastructure/symbol/repository/symbol_repository.dart';
import 'package:trading_app/config.dart';
import 'package:trading_app/presentation/trading_screen.dart';

void main() {
  final config = Config();
  final symbolRemoteDataSource = SymbolRemoteDataSource(
    httpService: HttpService(config: config, interceptors: []), 
    exceptionHandler: DataSourceExceptionHandler(), 
    config: config,
  );
  final symbolRepository = SymbolRepository(
    symbolRemoteDataSource: symbolRemoteDataSource,
    config: config,
  );

  runApp(TradingApp(symbolRepository: symbolRepository));
}

class TradingApp extends StatelessWidget {
  final SymbolRepository symbolRepository;

  const TradingApp({super.key, required this.symbolRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => TradingBloc(
          symbolRepository: symbolRepository, 
        )..add(const FetchSymbols()),
        child: const TradingScreen(),
      ),
    );
  }
}
