import 'package:flutter/widgets.dart';
import 'package:upper/core/routes/base_routes.dart';
import 'package:upper/features/splash/ui/splash_screen.dart';

class AppRoutes {
  static const String splash = 'splash';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return BaseRoutes(page: SplashScreen());
      default:
        return null;
    }
  }
}
