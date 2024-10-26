import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/config.dart';
import 'package:trading_app/domain/price/entities/price.dart';
import 'package:trading_app/infrastructure/symbol/repository/symbol_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'trading_event.dart';
import 'trading_state.dart';

class TradingBloc extends Bloc<TradingEvent, TradingState> {
  final SymbolRepository symbolRepository;
  WebSocketChannel? _channel;

  final Map<String, List<double>> _recentPrices = {};

  TradingBloc({
    required this.symbolRepository,
  }) : super(const TradingState.initial()) {
    on<FetchSymbols>(_onFetchSymbols);
    on<UpdatePrice>(_onUpdatePrice);
    on<ConnectWebSocket>(_onConnectWebSocket);
  }

  Future<void> _onFetchSymbols(
      FetchSymbols event, Emitter<TradingState> emit) async {
    emit(const TradingState.loading());

    final failureOrSuccess = await symbolRepository.getSymbolData();

    failureOrSuccess.fold(
      (failure) => emit(const TradingState.error('Failed to load')),
      (symbolsList) {
        for (final symbol in symbolsList) {
          _recentPrices[symbol.symbol] = List.generate(10, (index) => 0.0);
        }
        emit(TradingState.loaded(symbols: symbolsList, prices: {}));
        add(TradingEvent.connectWebSocket(symbolsList));
      },
    );
  }

  Future<void> _onConnectWebSocket(
      ConnectWebSocket event, Emitter<TradingState> emit) async {
    final symbols = event.symbols;
    final config = Config();
    _channel = WebSocketChannel.connect(
      Uri.parse(config.getWebsocketUrl),
    );

    for (final symbol in symbols) {
      _channel?.sink
          .add(json.encode({'type': 'subscribe', 'symbol': symbol.symbol}));
    }

    _channel?.stream.listen(
      (message) {
        final data = json.decode(message);
        if (data['type'] == 'trade') {
          for (final tradeData in data['data']) {
            final symbol = tradeData['s'];
            final price = tradeData['p'];
            add(TradingEvent.updatePrice(symbol, price));
          }
        }
      },
      onError: (error) {
        debugPrint('WebSocket Error: $error');
      },
      onDone: () {
        debugPrint('WebSocket connection closed');
      },
    );
  }

  Future<void> _onUpdatePrice(
      UpdatePrice event, Emitter<TradingState> emit) async {
    if (state is Loaded) {
      final loadedState = state as Loaded;
      final updatedPrices = Map<String, Price>.from(loadedState.prices);

      updatedPrices[event.symbol] =
          Price(symbol: event.symbol, price: event.price);

      _recentPrices.putIfAbsent(event.symbol, () => []);
      _recentPrices[event.symbol]!.add(event.price);

      if (_recentPrices[event.symbol]!.length > 10) {
        _recentPrices[event.symbol]!.removeAt(0);
      }

      emit(loadedState.copyWith(prices: updatedPrices));
    }
  }

  List<double> getAggregatedPriceHistory() {
    final aggregatedPrices = <double>[];

    if (_recentPrices.isEmpty) return aggregatedPrices;

    final historyLength = _recentPrices.values.first.length;

    for (int i = 0; i < historyLength; i++) {
      
      double sum = 0;
      int count = 0;

      for (final priceList in _recentPrices.values) {
        if (i < priceList.length) {
          sum += priceList[i];
          count++;
        }
      }

      if (count > 0) {
        aggregatedPrices.add(sum / count);
      }
    }

    return aggregatedPrices;
  }

  List<double> getRecentPrices(String symbol) => _recentPrices[symbol] ?? [];

  @override
  Future<void> close() {
    _channel?.sink.close();
    return super.close();
  }
}
