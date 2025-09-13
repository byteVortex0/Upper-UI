import 'package:flutter/material.dart';
import 'package:upper/core/utils/app_images.dart';
import '../../../../core/common/app_bar_widget.dart';
import 'widgets/verify2and3DetailsSec.dart';
import 'widgets/verify_content.dart';

class AccountVerify2 extends StatelessWidget {
  const AccountVerify2({super.key});

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
              text1: "Take selfie to verify your identity",
              text2:
                  "Quick and easy identification verification using your phone’s camera. Confirm your identity with a self-captured photo.",
              ImagePath: AppImages.accountVerifyImage2,
            ),
            SizedBox(height: 20),
            verifyDetailsSec(text: "Take a selfie",icon: Icons.camera_alt,),
          ],
        ),
      ),
    );
  }
}
