import 'package:flutter/material.dart';

import '../color_manager.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? bgColor;
  final Color? textColor;
  final Color? bgContainer;
  final Color? borderColor;
  final Color? bgPage;
  final Color? hintColor;

  const ColorThemeExtension({
    required this.bgColor,
    required this.textColor,
    required this.bgContainer,
    required this.borderColor,
    required this.bgPage,
    required this.hintColor,
  });

  @override
  ThemeExtension<ColorThemeExtension> copyWith({
    Color? bgColor,
    Color? textColor,
    Color? bgContainer,
    Color? borderColor,
    Color? bgPage,
    Color? hintColor,
  }) {
    return ColorThemeExtension(
      bgColor: bgColor ?? this.bgColor,
      textColor: textColor ?? this.textColor,
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
      textColor: Color.lerp(textColor, other.textColor, t),
      bgContainer: Color.lerp(bgContainer, other.bgContainer, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      bgPage: Color.lerp(bgPage, other.bgPage, t),
      hintColor: Color.lerp(hintColor, other.hintColor, t),
    );
  }

  static const ColorThemeExtension light = ColorThemeExtension(
    bgColor: Colors.white,
    textColor: DarkColorManager.textColor,
    bgContainer: LightColorManager.bgContainer,
    borderColor: LightColorManager.borderColor,
    bgPage: LightColorManager.bgPage,
    hintColor: LightColorManager.hintColor,
  );

  static const ColorThemeExtension dark = ColorThemeExtension(
    bgColor: DarkColorManager.bgDark,
    textColor: Colors.white,
    bgContainer: DarkColorManager.bgContainer,
    borderColor: DarkColorManager.borderColor,
    bgPage: DarkColorManager.bgPage,
    hintColor: DarkColorManager.hintColor,
  );
}
