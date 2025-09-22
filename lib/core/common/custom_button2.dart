import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_manager.dart';
import '../utils/fonts/font_weight_helper.dart';
import '../utils/fonts/style_manager.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
            side: BorderSide(color: LightColorManager.brandColor, width: 1),
          ),
          padding: EdgeInsets.symmetric(vertical: 8.h),
        ),
        child: Text(
          text,
          style: StyleManager.white16Regular(
            context,
          ).copyWith(fontWeight: FontWeightHelper.bold),
        ),
      ),
    );
  }
}
