import 'package:flutter/material.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import '../../../../core/common/app_bar_widget.dart';
import '../../../../core/utils/theme/color_theme_extension.dart';
import 'widgets/verify_content.dart';

class AccountVerify1 extends StatelessWidget {
  const AccountVerify1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verifyContent(
              text1: "Setting up your account",
              text2: "We are analyzing your data to verify",
              imagePath: AppImages.accountVerifyImage1,
            ),
            const SizedBox(height: 20),
            StepVerify1Widget(
              text: "Phone verified",
              textNum: "1",
              icon: Icons.check_circle,
            ),
            StepVerify1Widget(
              text: "Checking up document ID",
              textNum: "2",
              icon: Icons.check_circle,
            ),
            StepVerify1Widget(
              text: "Verifying photo",
              textNum: "3",
              icon: Icons.cancel,
              colorIcon: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class StepVerify1Widget extends StatelessWidget {
  const StepVerify1Widget({
    super.key,
    required this.textNum,
    required this.text,
    required this.icon,
    this.colorIcon = Colors.green,
  });
  final String textNum;
  final String text;
  final IconData icon;
  final Color colorIcon;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorThemeExtension>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xff613DE).withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    textNum,
                    style: StyleManager.brand14Regular(context).copyWith(
                      color: Color(0xff613DE4),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              //TODO: see
              // Text(text, style: StyleManager.brand16Medium(colors.textColor)),
              Text(
                text,
                style: StyleManager.brand16Medium.copyWith(
                  color: colors.textColor,
                ),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(icon, color: colorIcon)),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
