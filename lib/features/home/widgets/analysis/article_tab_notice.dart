import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/core/utils/fonts/font_weight_helper.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

class ArticleTabNotice extends StatelessWidget {
  const ArticleTabNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: LightColorManager.brandColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(AppImages.dollar, width: 70.w, height: 70.h),
              SizedBox(width: 5.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A smart end to the week and deals are here today',
                      style: StyleManager.white20Medium(
                        context,
                      ).copyWith(color: LightColorManager.textButtonColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20, Oct. 2023',
                          style: StyleManager.white14Regular(
                            context,
                          ).copyWith(color: LightColorManager.textButtonColor),
                        ),
                        Text(
                          '09:22',
                          style: StyleManager.white14Regular(
                            context,
                          ).copyWith(color: LightColorManager.textButtonColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Many traders, wanting to enter the market at the best price, use different methods.',
              style: StyleManager.white14Regular(
                context,
              ).copyWith(color: LightColorManager.textButtonColor),
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              Image.asset(AppImages.avatar, width: 50.w, height: 50.h),
              SizedBox(width: 5.w),
              Text(
                'John Johnson',
                style: StyleManager.white14Medium(
                  context,
                ).copyWith(color: LightColorManager.textButtonColor),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: LightColorManager.brandColor,
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                ),
                child: Text(
                  'Read more',
                  style: StyleManager.white16Regular(context).copyWith(
                    fontWeight: FontWeightHelper.medium,
                    color: LightColorManager.textButtonColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
