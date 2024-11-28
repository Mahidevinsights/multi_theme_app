import 'package:flutter/material.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/blue_theme_colors.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/dark_theme_colors.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/ligth_theme_colors.dart';
import 'package:multi_theme_app/utils/enums.dart';

import 'multi_theme_colors/green_theme_colors.dart';

class AppColors {
  static AppThemes currentTheme = AppThemes.light;

  // Theme Map
  static final _themeMap = {
    AppThemes.light: LightThemeColors.colors,
    AppThemes.dark: DarkThemeColors.colors,
    AppThemes.blue: BlueThemeColors.colors,
    AppThemes.green: GreenThemeColors.colors,
  };

  // Centralized Color Access
  static Map<String, Color> get colors => _themeMap[currentTheme]!;

  static Color get primary => colors['primary']!;
  static Color get background => colors['background']!;
  static Color get textColor => colors['textColor']!;
  static Color get headingText => colors['headingText']!;
  static Color get subheadingText => colors['subheadingText']!;
  static Color get buttonText => colors['buttonText']!;
}
