import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import 'package:upper/features/auth/ui/widgets/switcher.dart';

import '../../../../core/common/custom_button.dart';
import '../../../../core/routes/app_routes.dart';
import 'finger_print.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign in', style: StyleManager.white24Medium(context)),

            SizedBox(height: 20.h),

            Switcher(title: 'In'),

            SizedBox(height: 10.h),

            Text('Password', style: StyleManager.white12Regular(context)),

            SizedBox(height: 5.h),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your password',
                labelStyle: StyleManager.gray16Regular(context),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: context.color.textColor,
                ),
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              'Forget Password?',
              style: StyleManager.brand12Regular(
                context,
                LightColorManager.brandColor,
              ),
            ),

            SizedBox(height: 20.h),

            CustomButton(
              onPressed: () {
                context.pushReplacementNamed(AppRoutes.home);
              },
              text: 'Sign In',
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Divider(color: context.color.borderColor),
                ),
                Text(' or ', style: StyleManager.gray16Regular(context)),
                Expanded(
                  flex: 1,
                  child: Divider(color: context.color.borderColor),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            CustomButton(
              onPressed: () {},
              text: 'Sign In with Google',
              bgColor: context.color.buttonColor,
              style: StyleManager.white16Regular(context),
              icon: Icons.g_mobiledata_rounded,
            ),

            SizedBox(height: 10.h),

            CustomButton(
              onPressed: () {},
              text: 'Sign In with Apple',
              bgColor: context.color.buttonColor,
              style: StyleManager.white16Regular(context),
              icon: Icons.apple_rounded,
            ),

            SizedBox(height: 50.h),

            FingerPrint(),
          ],
        ),
      ),
    );
  }
}
