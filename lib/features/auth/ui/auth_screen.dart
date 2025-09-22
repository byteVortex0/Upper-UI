import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';

import 'package:upper/features/auth/ui/widgets/sing_in_page.dart';
import 'package:upper/features/auth/ui/widgets/sing_up_page.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/fonts/font_weight_helper.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  final List<String> tabs = ["Sign in", "Sign up"];
  final List<Widget> tabContents = [SignInPage(), SignUpPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.bgPage,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: context.color.bgContainer,
                borderRadius: BorderRadius.circular(2.r),
              ),
              child: Row(
                children: List.generate(tabs.length, (tabIndex) {
                  final isSelected = selectedIndex == tabIndex;
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = tabIndex;
                        });
                      },
                      child: Container(
                        height: 48.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? LightColorManager.brandColor
                                  : context.color.bgContainer,
                          borderRadius: BorderRadius.only(
                            topLeft:
                                tabIndex == 0
                                    ? Radius.circular(2.r)
                                    : Radius.zero,
                            bottomLeft:
                                tabIndex == 0
                                    ? Radius.circular(2.r)
                                    : Radius.zero,
                            topRight:
                                tabIndex == tabs.length - 1
                                    ? Radius.circular(2.r)
                                    : Radius.zero,
                            bottomRight:
                                tabIndex == tabs.length - 1
                                    ? Radius.circular(2.r)
                                    : Radius.zero,
                          ),
                          border: Border(
                            top: BorderSide(
                              color: context.color.borderColor!,
                              width: 2.w,
                            ),
                            bottom: BorderSide(
                              color: context.color.borderColor!,
                              width: 2.w,
                            ),
                            left: BorderSide(
                              color: context.color.borderColor!,
                              width: 2.w,
                            ),

                            right:
                                tabIndex == tabs.length - 1
                                    ? BorderSide(
                                      color: context.color.borderColor!,
                                      width: 2.w,
                                    )
                                    : BorderSide.none,
                          ),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            tabs[tabIndex],
                            style: TextStyle(
                              color:
                                  isSelected
                                      ? Colors.white
                                      : context.color.textColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeightHelper.medium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),

            Expanded(child: tabContents[selectedIndex]),
          ],
        ),
      ),
    );
  }
}
