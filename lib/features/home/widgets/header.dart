import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/fonts/font_weight_helper.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

import '../../../core/utils/color_manager.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: context.color.bgPage,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: context.color.borderColor!),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: context.color.bgPage,
                style: StyleManager.white16Regular(context),
                icon: Image.asset(context.asset.arrowDown!),
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                value: "Robert Robson",
                items: [
                  DropdownMenuItem(
                    value: "Robert Robson",
                    child: Row(
                      children: [
                        Image.asset(AppImages.avatar, width: 24, height: 24),
                        SizedBox(width: 8.w),
                        Text(
                          "Robert Robson",
                          style: StyleManager.white16Regular(context),
                        ),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "ETH",
                    child: Row(
                      children: [
                        Image.asset(AppImages.avatar, width: 24, height: 24),
                        SizedBox(width: 8.w),
                        Text(
                          "Robert Robson",
                          style: StyleManager.white16Regular(context),
                        ),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          ),
        ),

        SizedBox(width: 7.w),

        Container(
          decoration: BoxDecoration(
            color: context.color.bgPage,
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: context.color.borderColor!),
          ),
          child: Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 28.sp,
                  color: context.color.textColor,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: LightColorManager.brandColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
