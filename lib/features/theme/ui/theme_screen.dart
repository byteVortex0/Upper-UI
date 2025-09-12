import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/common/skip_button.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

import '../../../core/common/Custom_button.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/app_images.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: context.color.bgColor,
            image: DecorationImage(
              image: AssetImage(AppImages.splash),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SkipButton(onPressed: () {}),
              Image.asset(context.asset.themeImage!),
              Text(
                'You can immediately select a color theme',
                style: StyleManager.brand32Medium(context),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.accountSetup1Path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
