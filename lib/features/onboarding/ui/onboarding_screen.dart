import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/common/custom_button.dart';
import 'package:upper/core/common/skip_button.dart';
import 'package:upper/core/extensions/context_extension.dart';

import '../../../core/routes/app_routes.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/fonts/style_manager.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  late final List<Map<String, String>> pages;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    pages = [
      {
        "image": context.asset.onboarding1!,
        "subtitle": "Trusted by millions of people, part of one part",
      },
      {
        "image": context.asset.onboarding2!,
        "subtitle": "Our wallet will allow  you to store money in any currency",
      },
      {
        "image": context.asset.onboarding3!,
        "subtitle": "Invest and Earn from anywhere in the world",
      },
    ];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: context.color.bgColor,
            image: DecorationImage(
              image: AssetImage(AppImages.splash),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          child: PageView.builder(
            controller: _controller,
            itemCount: pages.length,

            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: 20.h),
                  SkipButton(onPressed: () {}),

                  SizedBox(height: 20.h),

                  Expanded(child: Image.asset(pages[index]["image"]!)),

                  SizedBox(height: 10.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      pages.length,
                      (i) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: _currentPage == i ? 24.w : 48.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              _currentPage == i
                                  ? LightColorManager.brandColor
                                  : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),

                  Text(
                    pages[index]["subtitle"]!,
                    style: StyleManager.brand32Medium(context),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20.h),

                  CustomButton(
                    onPressed: () {
                      if (_currentPage == pages.length - 1) {
                        context.pushReplacementNamed(
                          AppRoutes.accountSetup1Path,
                        );
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),

                  SizedBox(height: 20.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
