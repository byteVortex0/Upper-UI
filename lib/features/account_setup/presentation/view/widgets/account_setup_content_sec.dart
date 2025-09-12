import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';

class AccountSetupContentSec extends StatelessWidget {
  AccountSetupContentSec({required this.text1, required this.text2, super.key});
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1, style: StyleManager.brand24Medium(context)),

        SizedBox(
          width: 290,
          child: Text(text2, style: StyleManager.brand14Regular(context)),

        ),
      ],
    );
  }
}
