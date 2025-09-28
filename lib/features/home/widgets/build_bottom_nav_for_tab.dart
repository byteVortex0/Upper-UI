import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';
import '../../../core/utils/fonts/style_manager.dart';

Widget buildBottomNavForTab({
  required int selectedIndex,
  required BuildContext context,
  required Function(int) onItemTapped,
}) {
  switch (selectedIndex) {
    case 0:
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.bar_chart, "Markets", 0, selectedIndex, onItemTapped),
            _buildNavItem(Icons.bubble_chart_outlined, "Services", 2, selectedIndex, onItemTapped),
          ],
        ),
      );

    case 1: 
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.color.bgContainer,
        selectedLabelStyle: StyleManager.white12Bold(context),
        unselectedLabelStyle: StyleManager.white12Bold(context),
        selectedItemColor: context.color.textColor,
        unselectedItemColor: context.color.textColor,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
      );

    case 2: 
    default:
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.color.bgContainer,
        selectedLabelStyle: StyleManager.white12Bold(context),
        unselectedLabelStyle: StyleManager.white12Bold(context),
        selectedItemColor: context.color.textColor,
        unselectedItemColor: context.color.textColor,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
      );
  }
}
Widget _buildNavItem(
  IconData icon,
  String label,
  int index,
  int selectedIndex,
  Function(int) onItemTapped,
) {
  final isSelected = selectedIndex == index;

  return InkWell(
    borderRadius: BorderRadius.circular(12), 
    onTap: () => onItemTapped(index),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSelected ? LightColorManager.brandColor : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isSelected ? LightColorManager.brandColor : Colors.black,
          ),
        ),
      ],
    ),
  );
}
