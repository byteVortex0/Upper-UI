import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';

class verifyContent extends StatelessWidget {
  const verifyContent({
    super.key,
    required this.text1,
    required this.text2,
    required this.imagePath,
  });
  final String text1;
  final String text2;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Image.asset(imagePath, height: 380),
        SizedBox(
          width: 200,
          child: Text(
            text1,
            style: StyleManager.brand32Medium(context),
            textAlign: TextAlign.center,
          ),
        ),

        SizedBox(
          width: 330,
          child: Text(
            text2,
            style: StyleManager.brand14Regular(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
