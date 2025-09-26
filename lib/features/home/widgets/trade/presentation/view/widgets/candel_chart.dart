import 'package:flutter/material.dart';
import 'package:candlesticks/candlesticks.dart' as cs;

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sampleCandles =
        List.generate(150, (index) {
          final date = DateTime.now().subtract(Duration(minutes: index));
          final open = 2000 + index.toDouble();
          final close = open + (index.isEven ? 20 : -15);
          return cs.Candle(
            date: date,
            open: open,
            high: close + 30,
            low: open - 30,
            close: close,
            volume: 5000 + index * 20,
          );
        }).reversed.toList();

    return SizedBox(
      height: 290,
      child: cs.Candlesticks(candles: sampleCandles),
    );
  }
}
