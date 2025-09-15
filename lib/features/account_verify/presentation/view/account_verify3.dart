import 'package:flutter/material.dart';
import 'package:upper/core/utils/app_images.dart';
import '../../../../core/common/app_bar_widget.dart';
import 'widgets/verify2and3DetailsSec.dart';
import 'widgets/verify_content.dart';

class AccountVerify3 extends StatelessWidget {
  const AccountVerify3({super.key});

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
              text1: "Scan ID document to verify your identity",
              text2: "Confirm your identity with just a few taps on your phone",
              imagePath: AppImages.accountVerifyImage3,
            ),
            SizedBox(height: 20),
            verifyDetailsSec(
              text: "Scan",
              icon: Icons.picture_in_picture_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
