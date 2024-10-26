import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
class Price with _$Price {
   const Price._();
  const factory Price({
    required String symbol,
    required double price,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
   factory Price.empty() => const Price(symbol: '' , price: 0.00);
}
