import 'package:flutter/material.dart';

import '../app_images.dart';

class AssetThemeExtension extends ThemeExtension<AssetThemeExtension> {
  final String? themeImage;

  const AssetThemeExtension({required this.themeImage});

  @override
  ThemeExtension<AssetThemeExtension> copyWith({String? themeImage}) {
    return AssetThemeExtension(themeImage: themeImage ?? this.themeImage);
  }

  @override
  ThemeExtension<AssetThemeExtension> lerp(
    covariant ThemeExtension<AssetThemeExtension>? other,
    double t,
  ) {
    if (other is! AssetThemeExtension) {
      return this;
    }
    return AssetThemeExtension(themeImage: other.themeImage);
  }

  static const AssetThemeExtension light = AssetThemeExtension(
    themeImage: AppImages.lightTheme,
  );
  static const AssetThemeExtension dark = AssetThemeExtension(
    themeImage: AppImages.darkTheme,
  );
}
