import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/common/skip_button.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/routes/app_routes.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import 'package:upper/features/theme/ui/widgets/toggle_icons.dart';

import '../../../core/common/Custom_button.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/app_images.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
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
              Image.asset(
                context.asset.themeImage!,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              ToggleIcons(),
              Text(
                'You can immediately select a color theme',
                style: StyleManager.brand32Medium(context),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.onboarding);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
