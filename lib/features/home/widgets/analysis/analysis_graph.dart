import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

class AnalysisGraph extends StatelessWidget {
  const AnalysisGraph({super.key});

  @override
  Widget build(BuildContext context) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return SizedBox(
      height: 250.h,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
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
                  if (index >= 0 && index < months.length) {
                    return FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        months[index],
                        style: StyleManager.white11SemiBold(context),
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 20,
                getTitlesWidget: (value, meta) {
                  return FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      value.toInt().toString(),
                      style: StyleManager.white12Bold(context),
                    ),
                  );
                },
              ),
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
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
              color: Color(0xFF4E31B6),
              barWidth: 3,
              spots: [
                FlSpot(0, 10),
                FlSpot(1, 25),
                FlSpot(2, 40),
                FlSpot(3, 30),
                FlSpot(4, 50),
                FlSpot(5, 70),
                FlSpot(6, 60),
                FlSpot(7, 80),
                FlSpot(8, 65),
                FlSpot(9, 85),
                FlSpot(10, 90),
                FlSpot(11, 100),
              ],
              belowBarData: BarAreaData(show: false),
            ),

            LineChartBarData(
              isCurved: true,
              color: Colors.transparent,
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 15),
                FlSpot(2, 30),
                FlSpot(3, 20),
                FlSpot(4, 40),
                FlSpot(5, 60),
                FlSpot(6, 50),
                FlSpot(7, 70),
                FlSpot(8, 55),
                FlSpot(9, 75),
                FlSpot(10, 80),
                FlSpot(11, 90),
              ],
              belowBarData: BarAreaData(
                show: true,
                color: Color(0xFF4E31B6).withValues(alpha: 0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
