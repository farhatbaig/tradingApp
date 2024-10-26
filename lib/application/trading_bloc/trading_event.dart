import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';

part 'trading_event.freezed.dart';

@freezed
class TradingEvent with _$TradingEvent {
  const factory TradingEvent.fetchSymbols() = FetchSymbols;
  const factory TradingEvent.updatePrice(String symbol, double price) = UpdatePrice;
  const factory TradingEvent.connectWebSocket(List<SymbolData> symbols) = ConnectWebSocket; 

}
