import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

class ArticleTabSearch extends StatelessWidget {
  const ArticleTabSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: StyleManager.gray16Regular(context),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 12.w,
              ),
              suffixIcon: Image.asset(context.asset.search!, width: 24.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(color: context.color.borderColor!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(color: context.color.borderColor!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(
                  color: LightColorManager.brandColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),

        SizedBox(width: 10.w),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: context.color.borderColor!),
          ),
          child: Image.asset(context.asset.filter!, width: 24.w),
        ),
      ],
    );
  }
}
