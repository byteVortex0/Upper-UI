import 'package:flutter/material.dart';

import '../utils/fonts/style_manager.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.onPressed, this.text});

  final void Function() onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text ?? 'Skip', style: StyleManager.brand16Medium),
      ),
    );
  }
}
