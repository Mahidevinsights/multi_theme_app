import 'package:flutter/material.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/blue_theme_colors.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/dark_theme_colors.dart';
import 'package:multi_theme_app/styles/multi_theme_colors/ligth_theme_colors.dart';
import 'package:multi_theme_app/utils/enums.dart';

class AppColors {
  static AppThemes currentTheme = AppThemes.light;

  // Static references to individual themes
  static const Map<AppThemes, Map<String, Color>> themeMap = {
    AppThemes.light: LightThemeColors.lightColors,
    AppThemes.dark: DarkThemeColors.darkColors,
    AppThemes.blue: BlueThemeColors.blueColors,
  };

  // Static properties to access individual theme colors
  static Color get primary => themeMap[currentTheme]!['primary']!;
  static Color get background => themeMap[currentTheme]!['background']!;
  static Color get text => themeMap[currentTheme]!['text']!;
  static Color get headingText => themeMap[currentTheme]!['headingText']!;
  static Color get subheadingText => themeMap[currentTheme]!['subheadingText']!;
  static Color get buttonText => themeMap[currentTheme]!['buttonText']!;
}
