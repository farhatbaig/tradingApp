import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol.freezed.dart';
part 'symbol.g.dart';

@freezed
class SymbolData with _$SymbolData {
  const SymbolData._();
  const factory SymbolData({
    required String symbol,
  }) = _SymbolData;

  factory SymbolData.fromJson(Map<String, dynamic> json) => _$SymbolDataFromJson(json);
  factory SymbolData.empty() => const SymbolData(symbol: '');

}
