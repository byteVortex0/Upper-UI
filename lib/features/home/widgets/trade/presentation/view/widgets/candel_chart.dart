import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:candlesticks/candlesticks.dart' as cs;

import '../../view_models/btc_viewmodel.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ChartViewModel>(context);
    final sampleCandles = List.generate(100, (index) {
      final date = DateTime.now().subtract(Duration(minutes: index));
      final open = 100 + index.toDouble();
      final close = open + 5;
      return cs.Candle(
        date: date,
        open: open,
        high: close + 3,
        low: open - 3,
        close: close,
        volume: 1000 + index * 10,
      );
    });

    return SizedBox(
      height: 300,
      child: cs.Candlesticks(
        candles:
            (vm.candles.isNotEmpty && vm.candles.length > 20)
                ? vm.candles
                    .map(
                      (c) => cs.Candle(
                        date: c.time,
                        open: c.open,
                        high: c.high,
                        low: c.low,
                        close: c.close,
                        volume: 1000,
                      ),
                    )
                    .toList()
                : sampleCandles,
      ),
    );
  }
}
