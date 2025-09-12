import 'package:flutter/widgets.dart';
import 'package:upper/core/routes/base_routes.dart';
import 'package:upper/features/splash/ui/splash_screen.dart';
import 'package:upper/features/theme/ui/theme_screen.dart';

import '../../features/account_setup/presentation/view/account_setup1.dart';
import '../../features/account_setup/presentation/view/account_setup2.dart';
import '../../features/account_setup/presentation/view/account_setup3.dart';
import '../../features/account_setup/presentation/view/account_setup4.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const String theme = 'theme';
  static const String accountSetup1Path = '/accountSetup1Path';
  static const String accountSetup2Path = '/accountSetup2Path';
  static const String accountSetup3Path = '/accountSetup3Path';
  static const String accountSetup4Path = '/accountSetup4Path';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return BaseRoutes(page: SplashScreen());
      case theme:
        return BaseRoutes(page: ThemeScreen());
      case accountSetup1Path:
        return BaseRoutes(page: AccountSetup1());
      case accountSetup2Path:
        return BaseRoutes(page: AccountSetup2());
      case accountSetup3Path:
        return BaseRoutes(page: AccountSetup3());
      case accountSetup4Path:
        return BaseRoutes(page: AccountSetup4());
      default:
        return null;
    }
  }
}
