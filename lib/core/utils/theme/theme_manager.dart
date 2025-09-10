import 'package:flutter/material.dart';

import '../color_manager.dart';
import 'asset_theme_extensions.dart';
import 'color_theme_extension.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    extensions: const <ThemeExtension<dynamic>>[
      ColorThemeExtension.light,
      AssetThemeExtension.light,
    ],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkColorManager.bgDark,
    extensions: const <ThemeExtension<dynamic>>[
      ColorThemeExtension.dark,
      AssetThemeExtension.dark,
    ],
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkColorManager.bgDark,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
  );
}
