import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';
import '../../../../../core/utils/theme/color_theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.hintText,
    required this.topFieldText,
    this.isEmail = false,
    this.isSuffixIcon = false,
    this.suffixIcon,
  });
  String hintText;
  String topFieldText;
  bool isEmail;
  bool isSuffixIcon;
  IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
        final colors = Theme.of(context).extension<ColorThemeExtension>()!;

    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Text(topFieldText, style: StyleManager.brand12Regular(context)),
            Spacer(),
            isEmail
                ? Text(
                  "Sing In with Phone Number",
                  style: StyleManager.brand12Regular(
                    context,
                    Color(0xff613DE4),
                  ),
                )
                : SizedBox(),
          ],
        ),
        SizedBox(height: 7),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purpleAccent, width: 1.5),
            ),
            prefixIcon:
                isSuffixIcon
                    ? Icon(suffixIcon, color: colors.iconColor, size: 16)
                    : null,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
