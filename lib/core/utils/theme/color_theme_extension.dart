import 'package:flutter/material.dart';

import '../color_manager.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? brandColor;

  const ColorThemeExtension({required this.brandColor});

  @override
  ThemeExtension<ColorThemeExtension> copyWith({Color? brandColor}) {
    return ColorThemeExtension(brandColor: brandColor ?? this.brandColor);
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
      brandColor: Color.lerp(brandColor, other.brandColor, t),
    );
  }

  static const ColorThemeExtension light = ColorThemeExtension(
    brandColor: LightColorManager.brandColorLight,
  );

  static const ColorThemeExtension dark = ColorThemeExtension(
    brandColor: DarkColorManager.brandColorDark,
  );
}
