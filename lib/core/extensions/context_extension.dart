import 'package:flutter/material.dart';

import '../utils/theme/asset_theme_extensions.dart';
import '../utils/theme/color_theme_extension.dart';

extension ContextExtension on BuildContext {
  // for images
  AssetThemeExtension get asset =>
      Theme.of(this).extension<AssetThemeExtension>()!;

  // for colors
  ColorThemeExtension get color =>
      Theme.of(this).extension<ColorThemeExtension>()!;

  //Navigator
  void pop() => Navigator.of(this).pop();

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  Future<dynamic> pushReplacementNamed(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) => Navigator.of(
    this,
  ).pushNamedAndRemoveUntil(routeName, arguments: arguments, (route) => false);
}
