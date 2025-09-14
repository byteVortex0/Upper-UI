import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/color_manager.dart';

import '../../../../core/utils/fonts/font_weight_helper.dart';
import '../../../../core/utils/fonts/style_manager.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key});

  final List images = const [
    AppImages.cryptocurrency1,
    AppImages.cryptocurrency2,
    AppImages.cryptocurrency3,
    AppImages.cryptocurrency4,
    AppImages.cryptocurrency5,
    AppImages.longArrow,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 230.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: context.color.bgContainer,
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cryptocurrency',
            style: StyleManager.white16Regular(
              context,
            ).copyWith(fontWeight: FontWeightHelper.medium),
          ),
          SizedBox(height: 10.h),
          Text(
            '\$2.40M',
            style: StyleManager.white20Medium(
              context,
            ).copyWith(fontSize: 24.sp),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Portfolio Share',
                style: StyleManager.white11SemiBold(context),
              ),
              Text('99.60%', style: StyleManager.white11SemiBold(context)),
            ],
          ),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 5.h),
              trackShape: const RectangularSliderTrackShape(),
              trackHeight: 4,
            ),
            child: Slider(
              value: 90,
              onChanged: (val) {},
              min: 0,
              max: 100,
              activeColor: LightColorManager.brandColor,
            ),
          ),

          Row(
            children: [
              Image.asset(images[0]),
              Image.asset(images[1]),
              Image.asset(images[2]),
              Image.asset(images[3]),
              Image.asset(images[4]),
              Spacer(),
              Image.asset(images[5]),
            ],
          ),
        ],
      ),
    );
  }
}
