import 'package:flutter/widgets.dart';
import 'package:upper/core/routes/base_routes.dart';
import 'package:upper/features/splash/ui/splash_screen.dart';
import 'package:upper/features/theme/ui/theme_screen.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const String theme = 'theme';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return BaseRoutes(page: SplashScreen());
      case theme:
        return BaseRoutes(page: ThemeScreen());
      default:
        return null;
    }
  }
}
