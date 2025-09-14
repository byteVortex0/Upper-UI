import 'package:flutter/material.dart';

import '../color_manager.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? bgColor;
  final Color? textColor;

  final Color? buttonColor;
  final Color? iconColor;

  final Color? bgContainer;
  final Color? borderColor;
  final Color? bgPage;
  final Color? hintColor;

  const ColorThemeExtension({
    required this.bgColor,
    required this.textColor,
    this.buttonColor,
    this.iconColor,
    required this.bgContainer,
    required this.borderColor,
    required this.bgPage,
    required this.hintColor,
  });

  @override
  ThemeExtension<ColorThemeExtension> copyWith({
    Color? bgColor,
    Color? textColor,
    Color? buttonColor,
    Color? bgContainer,
    Color? borderColor,
    Color? bgPage,
    Color? hintColor,
    Color? iconColor,
  }) {
    return ColorThemeExtension(
      bgColor: bgColor ?? this.bgColor,
      textColor: textColor ?? this.textColor,
      buttonColor: buttonColor ?? this.buttonColor,
      iconColor: iconColor ?? this.iconColor,
      bgContainer: bgContainer ?? this.bgContainer,
      borderColor: borderColor ?? this.borderColor,
      bgPage: bgPage ?? this.bgPage,
      hintColor: hintColor ?? this.hintColor,
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
      bgContainer: Color.lerp(bgContainer, other.bgContainer, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      bgPage: Color.lerp(bgPage, other.bgPage, t),
      hintColor: Color.lerp(hintColor, other.hintColor, t),
    );
  }

  static const ColorThemeExtension light = ColorThemeExtension(
    bgColor: Colors.white,
    textColor: DarkColorManager.textColor,
    buttonColor: LightColorManager.textButtonColorLight,
    iconColor: Colors.black,
    bgContainer: LightColorManager.bgContainer,
    borderColor: LightColorManager.borderColor,
    bgPage: LightColorManager.bgPage,
    hintColor: LightColorManager.hintColor,
  );

  static const ColorThemeExtension dark = ColorThemeExtension(
    bgColor: DarkColorManager.bgDark,
    textColor: Colors.white,
    buttonColor: DarkColorManager.textButtonColorDark,
    iconColor: Colors.white,
    bgContainer: DarkColorManager.bgContainer,
    borderColor: DarkColorManager.borderColor,
    bgPage: DarkColorManager.bgPage,
    hintColor: DarkColorManager.hintColor,
  );
}
