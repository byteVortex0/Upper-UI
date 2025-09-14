import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/fonts/style_manager.dart';

class WalletGraph extends StatelessWidget {
  const WalletGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: LineChart(
        LineChartData(
          minX: 20,
          maxX: 30,
          minY: 0,
          maxY: 100,
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  int index = value.toInt();
                  if (index >= 20 && index <= 30) {
                    return Text(
                      '$index',
                      style: StyleManager.white11SemiBold(context),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),

            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: false,
            horizontalInterval: 20,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey,
                strokeWidth: 1,
                dashArray: [5, 5],
              );
            },

            drawVerticalLine: false,
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: const Color(0xFF4E31B6),
              barWidth: 3,
              spots: [
                FlSpot(20, 40),
                FlSpot(21, 35),
                FlSpot(22, 30),
                FlSpot(23, 25),
                FlSpot(24, 20),
                FlSpot(25, 30),
                FlSpot(26, 45),
                FlSpot(27, 60),
                FlSpot(28, 70),
                FlSpot(29, 80),
                FlSpot(30, 90),
              ],
              belowBarData: BarAreaData(
                show: true,
                color: const Color(0xFF4E31B6).withValues(alpha: 0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
