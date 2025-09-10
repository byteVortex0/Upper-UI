import 'package:flutter/material.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/routes/app_routes.dart';
import 'package:upper/core/utils/app_images.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.pushReplacementNamed(AppRoutes.theme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: LightColorManager.brandColor,
          image: DecorationImage(
            image: AssetImage(AppImages.splash),
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("Upper", style: StyleManager.white71Bold),
          ),
        ),
      ),
    );
  }
}
