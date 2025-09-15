import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';
import '../../../../../core/utils/theme/color_theme_extension.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  final Color? buttonColor; // const Color(0xff613DE4);
  final Color textColor; // Colors.white;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              buttonColor ??
              Theme.of(context).extension<ColorThemeExtension>()!.buttonColor!,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Text(
          "Continue",
          style: StyleManager.brand20Medium(context, textColor),
        ),
      ),
    );
  }
}
