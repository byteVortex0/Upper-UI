import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/common/custom_button2.dart';
import 'package:upper/core/extensions/context_extension.dart';

import '../../../core/common/custom_button.dart';
import '../../../core/common/skip_button.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/fonts/style_manager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            children: [
              SizedBox(height: 20.h),
              SkipButton(onPressed: () {}),

              SizedBox(height: 20.h),

              Expanded(child: Image.asset(context.asset.register!)),

              SizedBox(height: 10.h),

              SizedBox(height: 30.h),

              Text(
                'Create your account',
                style: StyleManager.brand32Medium(context),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20.h),

              CustomButton2(
                onPressed: () {
                  context.pushNamed(AppRoutes.auth, arguments: 0);
                },
                text: 'Sign in',
              ),

              SizedBox(height: 10.h),

              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  context.pushNamed(AppRoutes.auth, arguments: 1);
                },
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
