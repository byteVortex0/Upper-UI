import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

import '../../../../core/utils/fonts/font_weight_helper.dart';

class ReviewListItem extends StatelessWidget {
  const ReviewListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: context.color.bgContainer,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.strategyPreview, width: 70.w, height: 70.h),
          SizedBox(width: 10.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dividend strategy',
                  style: StyleManager.white16Regular(
                    context,
                  ).copyWith(fontWeight: FontWeightHelper.medium),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu',
                  style: StyleManager.white14Regular(context),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
