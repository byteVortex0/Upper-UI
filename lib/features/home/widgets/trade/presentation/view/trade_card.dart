
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/fonts/font_weight_helper.dart';
import '../../../../../../core/utils/fonts/style_manager.dart';

class TradeCard extends StatelessWidget {
  const TradeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: LightColorManager.brandColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              AppImages.btc,
              width: 50.w,
              height: 50.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BTC',
                        style: StyleManager.white16Regular(
                          context,
                        ).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeightHelper.regular,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                        ),
                        child: Text(
                          '+6,66%',
                          style: StyleManager.white14Medium(
                            context,
                          ).copyWith(
                            color: Colors.green,
                            fontWeight: FontWeightHelper.medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bitcoin',
                        style: StyleManager.white16Regular(
                          context,
                        ).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeightHelper.regular,
                        ),
                      ),
                      Text(
                        '₽ 189 584,7',
                        style: StyleManager.white16Regular(
                          context,
                        ).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeightHelper.regular,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
