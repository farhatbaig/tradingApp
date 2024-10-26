import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trading_app/domain/price/entities/price.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';

part 'trading_state.freezed.dart';

@freezed
class TradingState with _$TradingState {
  const factory TradingState.initial() = Initial;
  const factory TradingState.loading() = Loading;
  const factory TradingState.loaded({
    required List<SymbolData> symbols,
    required Map<String, Price> prices,
  }) = Loaded;
  const factory TradingState.error(String message) = Error;
}
