import 'package:flutter/widgets.dart';
import 'package:upper/core/routes/base_routes.dart';
import 'package:upper/features/splash/ui/splash_screen.dart';
import 'package:upper/features/theme/ui/theme_screen.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const String theme = 'theme';
  static const String onboarding = 'onboarding';
  static const String home = 'home';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return BaseRoutes(page: SplashScreen());
      case theme:
        return BaseRoutes(page: ThemeScreen());
      case onboarding:
        return BaseRoutes(page: OnboardingScreen());
      case home:
        return BaseRoutes(page: HomeScreen());
      default:
        return null;
    }
  }
}
