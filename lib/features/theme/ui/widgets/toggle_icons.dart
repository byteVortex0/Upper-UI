import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/services/shared_pref/shared_pref.dart';
import 'package:upper/core/utils/color_manager.dart';

import '../../../../core/app/theme_cubit/theme_cubit.dart';
import '../../../../core/services/shared_pref/pref_key.dart';

class ToggleIcons extends StatelessWidget {
  const ToggleIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.bgContainer,
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder:
            (BuildContext context, ThemeState state) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Light Button
                GestureDetector(
                  onTap: () {
                    context.read<ThemeCubit>().changeThemeMode();
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color:
                          SharedPref.getValue(PrefKey.isDark)
                              ? Colors.transparent
                              : LightColorManager.brandColor,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Icon(
                      Icons.light_mode_outlined,
                      size: 32,
                      color:
                          SharedPref.getValue(PrefKey.isDark)
                              ? context.color.textColor
                              : Colors.white,
                    ),
                  ),
                ),
                // Dark Button
                GestureDetector(
                  onTap: () {
                    context.read<ThemeCubit>().changeThemeMode();
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color:
                          SharedPref.getValue(PrefKey.isDark)
                              ? LightColorManager.brandColor
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(
                      Icons.dark_mode_outlined,
                      size: 32,
                      color:
                          SharedPref.getValue(PrefKey.isDark)
                              ? Colors.white
                              : context.color.textColor,
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
