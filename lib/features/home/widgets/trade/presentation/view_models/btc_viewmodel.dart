import 'package:flutter/foundation.dart';
import '../../models/candle_model.dart';
class ChartViewModel extends ChangeNotifier {
  List<Candle> _candles = [];

  List<Candle> get candles => _candles;

  ChartViewModel() {
    _candles = [
      Candle(
        time: DateTime.now().subtract(const Duration(minutes: 5)),
        open: 100.0,
        high: 120.0,
        low: 90.0,
        close: 110.0,
      ),
      Candle(
        time: DateTime.now().subtract(const Duration(minutes: 4)),
        open: 110.0,
        high: 130.0,
        low: 100.0,
        close: 120.0,
      ),
      Candle(
        time: DateTime.now().subtract(const Duration(minutes: 3)),
        open: 120.0,
        high: 125.0,
        low: 115.0,
        close: 118.0,
      ),
      Candle(
        time: DateTime.now().subtract(const Duration(minutes: 2)),
        open: 118.0,
        high: 140.0,
        low: 110.0,
        close: 130.0,
      ),
      Candle(
        time: DateTime.now().subtract(const Duration(minutes: 1)),
        open: 130.0,
        high: 135.0,
        low: 125.0,
        close: 128.0,
      ),
    ];
  }

  void setCandles(List<Candle> data) {
    _candles = data;
    notifyListeners();
  }
}
