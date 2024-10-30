import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/application/trading_bloc/trading_bloc.dart';
import 'package:trading_app/application/trading_bloc/trading_state.dart';
import 'package:trading_app/presentation/price_chart.dart';
import 'package:trading_app/presentation/trading_card.dart';

class TradingScreen extends StatelessWidget {
  const TradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Trading Instruments',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const BigPriceChart(),
          Expanded(
            child: BlocBuilder<TradingBloc, TradingState>(
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(
                    child: SizedBox(
                        width: 70,
                        height: 70,
                        child: CircularProgressIndicator(
                          color: Colors.teal,
                          strokeWidth: 2,
                        )),
                  );
                } else if (state is Error) {
                  return Center(
                    child: Text(
                      state.message,
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                  );
                } else if (state is Loaded) {
                  final symbols = state.symbols;
                  final prices = state.prices;

                  return ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: symbols.length,
                    itemBuilder: (context, index) {
                      final symbol = symbols[index];
                      final price = prices[symbol.symbol]?.price ?? 0.0;
                      final previousPrice = index > 0
                          ? prices[symbols[index - 1].symbol]?.price ?? price
                          : price;
                      final priceChange = price - previousPrice;
                      final recentPrices = context
                          .read<TradingBloc>()
                          .getRecentPrices(symbol.symbol);

                      return TradingCard(
                        symbol: symbol.symbol,
                        price: price,
                        priceChange: priceChange,
                        recentPrices: recentPrices,
                      );
                    },
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
