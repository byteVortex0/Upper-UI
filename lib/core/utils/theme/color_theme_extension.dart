import 'package:flutter/material.dart';

import '../color_manager.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? bgColor;
  final Color? textColor;
  final Color? buttonColor;
  final Color? iconColor;

  const ColorThemeExtension({
    required this.bgColor,
    required this.textColor,
    this.buttonColor,
    this.iconColor,
  });

  @override
  ThemeExtension<ColorThemeExtension> copyWith({
    Color? bgColor,
    Color? textColor,
    Color? buttonColor,
  }) {
    return ColorThemeExtension(
      bgColor: bgColor ?? this.bgColor,
      textColor: textColor ?? this.textColor,
      buttonColor: buttonColor ?? this.buttonColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  ThemeExtension<ColorThemeExtension> lerp(
    covariant ThemeExtension<ColorThemeExtension>? other,
    double t,
  ) {
    if (other is! ColorThemeExtension) {
      return this;
    }
    return ColorThemeExtension(
      bgColor: Color.lerp(bgColor, other.bgColor, t),
      textColor: Color.lerp(bgColor, other.textColor, t),
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
    );
  }

  static const ColorThemeExtension light = ColorThemeExtension(
    bgColor: Colors.white,
    textColor: DarkColorManager.textColor,
    buttonColor: LightColorManager.textButtonColorLight,
    iconColor: Colors.black,
  );

  static const ColorThemeExtension dark = ColorThemeExtension(
    bgColor: DarkColorManager.bgDark,
    textColor: Colors.white,
    buttonColor: DarkColorManager.textButtonColorDark,
    iconColor: Colors.white,
  );
}
