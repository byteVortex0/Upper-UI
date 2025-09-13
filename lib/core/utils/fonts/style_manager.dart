import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/core/utils/fonts/font_weight_helper.dart';

class StyleManager {
  static TextStyle white71Bold = GoogleFonts.roboto(
    fontSize: 71.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontStyle: FontStyle.italic,
    shadows: [
      Shadow(offset: Offset(3, 3), blurRadius: 3.0, color: Colors.black),
    ],
  );

  static TextStyle brand16Medium ([Color?color])=> GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: color??LightColorManager.brandColor,
  );

  static TextStyle brand20Medium(BuildContext context, [Color? color]) =>
      GoogleFonts.roboto(
        fontSize: 20.sp,
        fontWeight: FontWeightHelper.medium,
        color: color ?? LightColorManager.textButtonColorLight,
      );
  static TextStyle brand24Medium(BuildContext context, [Color? color]) =>
      GoogleFonts.roboto(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.medium,
        color: color ?? context.color.textColor,
      );

  static TextStyle brand32Medium(BuildContext context) => GoogleFonts.roboto(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: context.color.textColor,
  );

  static TextStyle brand12Regular(BuildContext context, [Color? color]) =>
      GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeightHelper.regular,
        color: color ?? context.color.textColor,
      );
  static TextStyle brand14Regular(BuildContext context, [Color? color]) =>
      GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeightHelper.regular,
        color: color ?? context.color.textColor,
      );

      static TextStyle brand14Meduim(BuildContext context, [Color? color]) =>
      GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeightHelper.medium,
        color: color ?? context.color.textColor,
      );
}
