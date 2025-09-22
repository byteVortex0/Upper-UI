import 'package:flutter/material.dart';

import '../app_images.dart';

class AssetThemeExtension extends ThemeExtension<AssetThemeExtension> {
  final String? themeImage;
  final String? onboarding1;
  final String? onboarding2;
  final String? onboarding3;
  final String? arrowDown;
  final String? search;
  final String? filter;
  final String? analysisHome;
  final String? calendar;
  final String? tools;
  final String? learning;
  final String? walletHome;
  final String? confirmation;
  final String? exchange;
  final String? story;
  final String? register;

  const AssetThemeExtension({
    required this.themeImage,
    required this.onboarding1,
    required this.onboarding2,
    required this.onboarding3,
    required this.arrowDown,
    required this.search,
    required this.filter,
    required this.analysisHome,
    required this.calendar,
    required this.tools,
    required this.learning,
    required this.walletHome,
    required this.confirmation,
    required this.exchange,
    required this.story,
    required this.register,
  });

  @override
  ThemeExtension<AssetThemeExtension> copyWith({
    String? themeImage,
    String? onboarding1,
    String? onboarding2,
    String? onboarding3,
    String? arrowDown,
    String? search,
    String? filter,
    String? analysisHome,
    String? calendar,
    String? tools,
    String? learning,
    String? walletHome,
    String? confirmation,
    String? exchange,
    String? story,
    String? regiter,
  }) {
    return AssetThemeExtension(
      themeImage: themeImage ?? this.themeImage,
      onboarding1: onboarding1 ?? this.onboarding1,
      onboarding2: onboarding2 ?? this.onboarding2,
      onboarding3: onboarding3 ?? this.onboarding3,
      arrowDown: arrowDown ?? this.arrowDown,
      search: search ?? this.search,
      filter: filter ?? this.filter,
      analysisHome: analysisHome ?? this.analysisHome,
      calendar: calendar ?? this.calendar,
      tools: tools ?? this.tools,
      learning: learning ?? this.learning,
      walletHome: walletHome ?? this.walletHome,
      confirmation: confirmation ?? this.confirmation,
      exchange: exchange ?? this.exchange,
      story: story ?? this.story,
      register: regiter ?? this.register,
    );
  }

  @override
  ThemeExtension<AssetThemeExtension> lerp(
    covariant ThemeExtension<AssetThemeExtension>? other,
    double t,
  ) {
    if (other is! AssetThemeExtension) {
      return this;
    }
    return AssetThemeExtension(
      themeImage: other.themeImage,
      onboarding1: other.onboarding1,
      onboarding2: other.onboarding2,
      onboarding3: other.onboarding3,
      arrowDown: other.arrowDown,
      search: other.search,
      filter: other.filter,
      analysisHome: other.analysisHome,
      calendar: other.calendar,
      tools: other.tools,
      learning: other.learning,
      walletHome: other.walletHome,
      confirmation: other.confirmation,
      exchange: other.exchange,
      story: other.story,
      register: other.register,
    );
  }

  static const AssetThemeExtension light = AssetThemeExtension(
    themeImage: AppImages.lightTheme,
    onboarding1: AppImages.onboardingLight1,
    onboarding2: AppImages.onboardingLight2,
    onboarding3: AppImages.onboardingLight3,
    arrowDown: AppImages.arrowDownLight,
    search: AppImages.searchLight,
    filter: AppImages.filterLight,
    analysisHome: AppImages.homeDark,
    calendar: AppImages.calendarLight,
    tools: AppImages.toolsLight,
    learning: AppImages.learningLight,
    walletHome: AppImages.homeWDark,
    confirmation: AppImages.confirmationLight,
    exchange: AppImages.exchangeLight,
    story: AppImages.storyLight,
    register: AppImages.registerLight,
  );
  static const AssetThemeExtension dark = AssetThemeExtension(
    themeImage: AppImages.darkTheme,
    onboarding1: AppImages.onboardingDark1,
    onboarding2: AppImages.onboardingDark2,
    onboarding3: AppImages.onboardingDark3,
    arrowDown: AppImages.arrowDownDark,
    search: AppImages.searchDark,
    filter: AppImages.filterDark,
    analysisHome: AppImages.homeDark,
    calendar: AppImages.calendarDark,
    tools: AppImages.toolsDark,
    learning: AppImages.learningDark,
    walletHome: AppImages.homeWDark,
    confirmation: AppImages.confirmationDark,
    exchange: AppImages.exchangeDark,
    story: AppImages.storyDark,
    register: AppImages.registerDark,
  );
}
