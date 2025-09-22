import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';

import '../utils/color_manager.dart';
import '../utils/fonts/style_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.text,
    this.bgColor,
    this.style,
    this.icon,
  });

  final void Function() onPressed;
  final String? text;
  final Color? bgColor;
  final TextStyle? style;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? LightColorManager.brandColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 8.h),
        ),
        label: Text(
          text ?? 'Next',
          style: style ?? StyleManager.brand20Medium(context),
        ),
        icon:
            icon != null
                ? Icon(icon, color: context.color.textColor, size: 30.sp)
                : null,
      ),
    );
  }
}
