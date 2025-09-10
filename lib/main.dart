import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/routes/app_routes.dart';

import 'core/utils/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Upper',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeManager.darkTheme,
        theme: ThemeManager.lightTheme,
        themeMode:
            /*  context.read<ThemeCubit>().isDark  
                ? ThemeMode.dark
                :*/
            ThemeMode.light,
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
