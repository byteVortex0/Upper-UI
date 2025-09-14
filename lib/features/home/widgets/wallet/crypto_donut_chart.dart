import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/color_manager.dart';

import '../../../../core/utils/fonts/font_weight_helper.dart';
import '../../../../core/utils/fonts/style_manager.dart';

class CryptoDonutChart extends StatelessWidget {
  const CryptoDonutChart({super.key});

  List<Map<String, dynamic>> get data => [
    {
      'name': 'Ethereum',
      'value': 30.0,
      'color': const Color(0xFF6E7CE3),
      'image': AppImages.cryptocurrency1,
    },
    {
      'name': 'Ontolagy',
      'value': 20.0,
      'color': const Color(0xFF32A4BE),
      'image': AppImages.cryptocurrency2,
    },
    {
      'name': 'Cardano',
      'value': 15.0,
      'color': const Color(0xFF3CC8C8),
      'image': AppImages.cryptocurrency3,
    },
    {
      'name': 'BlackCoin',
      'value': 10.0,
      'color': const Color(0xFF000000),
      'image': AppImages.cryptocurrency6,
    },
    {
      'name': 'BNB Coin',
      'value': 8.0,
      'color': const Color(0xFFF3BA2F),
      'image': AppImages.cryptocurrency4,
    },
    {
      'name': 'Diamond',
      'value': 9.0,
      'color': const Color(0xFF0A49AF),
      'image': AppImages.cryptocurrency7,
    },
    {
      'name': 'Tether',
      'value': 8.0,
      'color': const Color(0xFF00A478),
      'image': AppImages.cryptocurrency5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final total = data.fold<double>(0, (s, e) => s + (e['value'] as double));
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.color.bgContainer,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Blockchain Allocation',
                style: StyleManager.white16Regular(
                  context,
                ).copyWith(fontWeight: FontWeightHelper.medium),
              ),

              Text('View All', style: StyleManager.brand16Medium),
            ],
          ),

          SizedBox(height: 8.h),

          SizedBox(
            height: 270.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 4,
                    centerSpaceRadius: 50.r,
                    startDegreeOffset: -90,
                    sections: _buildSections(),
                    pieTouchData: PieTouchData(
                      touchCallback: (event, response) {},
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Networks",
                      style: StyleManager.white14Medium(context),
                    ),
                    Text(
                      "7",
                      style: StyleManager.brand32Medium(
                        context,
                      ).copyWith(color: LightColorManager.brandColor),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 12.h),

          Wrap(
            spacing: 12.w,
            runSpacing: 8.h,
            alignment: WrapAlignment.start,
            children:
                data.map((item) {
                  final name = item['name'] as String;
                  final value = item['value'] as double;
                  final color = item['color'] as Color;
                  final image = item['image'] as String;
                  final percent = (value / total * 100).toStringAsFixed(0);
                  return _LegendItem(
                    image: image,
                    color: color,
                    label: '$name • $percent%',
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _buildSections() {
    return data.asMap().entries.map((entry) {
      final item = entry.value;
      final Color color = item['color'] as Color;

      return PieChartSectionData(
        color: color,
        showTitle: true,
        badgeWidget: null,
        borderSide: const BorderSide(color: Colors.white, width: 1),
      );
    }).toList();
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String image;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 6.w),
        Text(label, style: TextStyle(fontSize: 12.sp)),
      ],
    );
  }
}
