import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';

part 'symbol_dto.freezed.dart';
part 'symbol_dto.g.dart';


@freezed
class SymbolDataDto with _$SymbolDataDto {
  const SymbolDataDto._();
  const factory SymbolDataDto({
     required String symbol,
  }) = _SymbolDataDto;

  factory SymbolDataDto.fromJson(Map<String, dynamic> json) =>
      _$SymbolDataDtoFromJson(json);

  SymbolData toDomain() =>
      SymbolData(symbol: symbol);
}
