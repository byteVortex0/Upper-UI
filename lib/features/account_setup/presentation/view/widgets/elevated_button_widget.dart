import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    super.key,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  Color buttonColor; // const Color(0xff613DE4);
  Color textColor; // Colors.white;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Text("Continue", style: StyleManager.brand20Medium(context,textColor)),
      ),
    );
  }
}
