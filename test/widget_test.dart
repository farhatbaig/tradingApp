import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trading_app/main.dart';
import 'package:trading_app/domain/symbol/entities/symbol.dart';
import 'package:dartz/dartz.dart';
import 'mocks.mocks.dart';

void main() {
  group('TradingApp Widget Tests', () {
    late MockSymbolRepository mockSymbolRepository;

    setUp(() {
      mockSymbolRepository = MockSymbolRepository();

      when(mockSymbolRepository.getSymbolData())
          .thenAnswer((_) async => const Right([
                SymbolData(
                  symbol: 'BTCUSD',
                ),
                SymbolData(
                  symbol: 'ETHUSD',
                ),
              ]));
    });

    testWidgets('Displays initial data correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        TradingApp(symbolRepository: mockSymbolRepository),
      );

      await tester.pumpAndSettle();

      expect(find.text('Trading Instruments'), findsOneWidget);
    });
  });
}
