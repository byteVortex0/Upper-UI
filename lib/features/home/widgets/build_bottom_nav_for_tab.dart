import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';

import '../../../core/utils/fonts/style_manager.dart';

Widget buildBottomNavForTab(int index, BuildContext context) {
  switch (index) {
    case 0:
      return Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.color.bgContainer,
          selectedLabelStyle: StyleManager.white12Bold(context),
          unselectedLabelStyle: StyleManager.white12Bold(context),
          selectedItemColor: context.color.textColor,
          unselectedItemColor: context.color.textColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      );
    case 1:
      return Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.color.bgContainer,
          selectedLabelStyle: StyleManager.white12Bold(context),
          unselectedLabelStyle: StyleManager.white12Bold(context),
          selectedItemColor: context.color.textColor,
          unselectedItemColor: context.color.textColor,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: LightColorManager.brandColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Image.asset(context.asset.walletHome!),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.confirmation!),
              label: "Confirmation",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.exchange!),
              label: "Exchange",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.story!),
              label: "Story",
            ),
          ],
        ),
      );
    case 2:
    default:
      return Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.color.bgContainer,
          selectedLabelStyle: StyleManager.white12Bold(context),
          unselectedLabelStyle: StyleManager.white12Bold(context),
          selectedItemColor: context.color.textColor,
          unselectedItemColor: context.color.textColor,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: LightColorManager.brandColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Image.asset(context.asset.analysisHome!),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.calendar!),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.tools!),
              label: "Tools",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(context.asset.learning!),
              label: "Learning",
            ),
          ],
        ),
      );
  }
}
