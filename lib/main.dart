import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/routes/app_routes.dart';

import 'core/app/theme_cubit/theme_cubit.dart';

import 'core/services/shared_pref/shared_pref.dart';
import 'core/utils/theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  await SharedPref.init();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (BuildContext context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder:
              (BuildContext context, ThemeState state) => MaterialApp(
                title: 'Upper',
                debugShowCheckedModeBanner: false,
                darkTheme: ThemeManager.darkTheme,
                theme: ThemeManager.lightTheme,
                themeMode:
                    context.read<ThemeCubit>().isDark
                        ? ThemeMode.dark
                        : ThemeMode.light,
                initialRoute: AppRoutes.splash,
                onGenerateRoute: AppRoutes.onGenerateRoute,
              ),
        ),
      ),
    );
  }
}
