import 'package:flutter/widgets.dart';
import 'package:upper/core/routes/base_routes.dart';
import 'package:upper/features/splash/ui/splash_screen.dart';
import 'package:upper/features/theme/ui/theme_screen.dart';

import '../../features/account_setup/presentation/view/account_setup1.dart';
import '../../features/account_setup/presentation/view/account_setup2.dart';
import '../../features/account_setup/presentation/view/account_setup3.dart';
import '../../features/account_setup/presentation/view/account_setup4.dart';
import '../../features/account_verify/presentation/view/account_verify1.dart';
import '../../features/account_verify/presentation/view/account_verify2.dart';
import '../../features/account_verify/presentation/view/account_verify3.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const String theme = 'theme';
  static const String accountSetup1Path = '/accountSetup1Path';
  static const String accountSetup2Path = '/accountSetup2Path';
  static const String accountSetup3Path = '/accountSetup3Path';
  static const String accountSetup4Path = '/accountSetup4Path';
  static const String accountVerify1Path = '/accountVerify1Path';
  static const String accountVerify2Path = '/accountVerify2Path';
  static const String accountVerify3Path = '/accountVerify3Path';
  static const String onboarding = 'onboarding';
  static const String home = 'home';

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
      case accountVerify1Path:
        return BaseRoutes(page: AccountVerify1());
      case accountVerify2Path:
        return BaseRoutes(page: AccountVerify2());
      case accountVerify3Path:
        return BaseRoutes(page: AccountVerify3());
      case onboarding:
        return BaseRoutes(page: OnboardingScreen());
      case home:
        return BaseRoutes(page: HomeScreen());
      default:
        return null;
    }
  }
}
