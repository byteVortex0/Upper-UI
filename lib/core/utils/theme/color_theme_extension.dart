import 'package:flutter/material.dart';

import '../color_manager.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? bgColor;
  final Color? textColor;

  const ColorThemeExtension({required this.bgColor, required this.textColor});

  @override
  ThemeExtension<ColorThemeExtension> copyWith({
    Color? bgColor,
    Color? textColor,
  }) {
    return ColorThemeExtension(
      bgColor: bgColor ?? this.bgColor,
      textColor: textColor ?? this.textColor,
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
    );
  }

  static const ColorThemeExtension light = ColorThemeExtension(
    bgColor: Colors.white,
    textColor: DarkColorManager.textColor,
  );

  static const ColorThemeExtension dark = ColorThemeExtension(
    bgColor: DarkColorManager.bgDark,
    textColor: Colors.white,
  );
}
