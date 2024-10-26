import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TradingCard extends StatelessWidget {
  final String symbol;
  final double price;
  final double priceChange;
  final List<double> recentPrices;

  const TradingCard({
    super.key,
    required this.symbol,
    required this.price,
    required this.priceChange,
    required this.recentPrices,
  });

  @override
  Widget build(BuildContext context) {
    final isPriceUp = priceChange >= 0;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  symbol,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'USD',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              height: 50,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: recentPrices
                          .asMap()
                          .entries
                          .map((entry) =>
                              FlSpot(entry.key.toDouble(), entry.value))
                          .toList(),
                      isCurved: true,
                      color: isPriceUp ? Colors.teal : Colors.redAccent,
                      barWidth: 2,
                      belowBarData: BarAreaData(
                        show: true,
                        color:
                            (isPriceUp ? Colors.teal : Colors.redAccent)
                                .withOpacity(0.3),
                      ),
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      isPriceUp ? Icons.arrow_upward : Icons.arrow_downward,
                      color: isPriceUp ? Colors.teal : Colors.redAccent,
                      size: 16,
                    ),
                    Text(
                      '${priceChange.toStringAsFixed(2)}%',
                      style: TextStyle(
                        color:
                            isPriceUp ? Colors.teal : Colors.redAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
