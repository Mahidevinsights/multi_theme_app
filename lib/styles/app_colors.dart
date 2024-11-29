import 'package:flutter/material.dart';
import 'package:multi_theme_app/styles/multi_themes/blue_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/dark_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/light_theme.dart';
import 'package:multi_theme_app/utils/enums.dart';
import 'multi_themes/green_theme.dart';

class AppColors {
  static AppThemes currentTheme = AppThemes.light;

  // Theme Map
  static final _themeMap = {
    AppThemes.light: LightTheme.colors,
    AppThemes.dark: DarkTheme.colors,
    AppThemes.blue: BlueTheme.colors,
    AppThemes.green: GreenTheme.colors,
  };

  // Centralized Color Access
  static Map<String, Color> get colors => _themeMap[currentTheme]!;

  static Color get primary => colors['primary']!;
  static Color get background => colors['background']!;
  static Color get foreGround => colors['foreGround']!;
  static Color get cardBorder => colors['cardBorder']!;
  static Color get depth => colors['depth']!;
  static Color get secondary => colors['secondary']!;
  static Color get primaryText => colors['primaryText']!;
  static Color get secondaryText => colors['secondaryText']!;
  static Color get positiveIndicator => colors['positiveIndicator']!;
  static Color get negativeIndicator => colors['negativeIndicator']!;
  static Color get textColor => colors['textColor']!;
}
