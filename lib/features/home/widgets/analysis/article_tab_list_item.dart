import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/fonts/font_weight_helper.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

import '../../../../core/utils/app_images.dart';

class ArticleTabListItem extends StatelessWidget {
  const ArticleTabListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,

      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: context.color.bgContainer,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Image.asset(
            AppImages.bitcoin,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 Bitcoin wallets from the Satoshi era',
                  style: StyleManager.white16Regular(
                    context,
                  ).copyWith(fontWeight: FontWeightHelper.regular),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '20, Oct. 2023',
                      style: StyleManager.white14Regular(context),
                    ),
                    SizedBox(width: 10.w),
                    Text('09:22', style: StyleManager.white14Regular(context)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
