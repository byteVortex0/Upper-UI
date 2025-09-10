import 'package:flutter/material.dart';

import '../app_images.dart';

class AssetThemeExtension extends ThemeExtension<AssetThemeExtension> {
  final String? onBoarding;

  const AssetThemeExtension({required this.onBoarding});

  @override
  ThemeExtension<AssetThemeExtension> copyWith({String? onBoarding}) {
    return AssetThemeExtension(onBoarding: onBoarding ?? this.onBoarding);
  }

  @override
  ThemeExtension<AssetThemeExtension> lerp(
    covariant ThemeExtension<AssetThemeExtension>? other,
    double t,
  ) {
    if (other is! AssetThemeExtension) {
      return this;
    }
    return AssetThemeExtension(onBoarding: other.onBoarding);
  }

  static const AssetThemeExtension light = AssetThemeExtension(
    onBoarding: AppImages.onBoardingLight,
  );
  static const AssetThemeExtension dark = AssetThemeExtension(
    onBoarding: AppImages.onBoardingDark,
  );
}
