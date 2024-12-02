import 'package:flutter/material.dart';
import 'package:multi_theme_app/styles/multi_themes/blue_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/dark_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/light_theme.dart';
import 'app_constants.dart/light_theme_const_keys.dart';
import 'multi_themes/green_theme.dart';
import 'package:multi_theme_app/utils/enums.dart';

class AppColors {
  static AppThemes currentTheme = AppThemes.light;

  // Theme Map
  static final _themeMap = {
    AppThemes.light: LightTheme.colors,
    AppThemes.dark: DarkTheme.colors,
    AppThemes.blue: BlueTheme.colors,
    AppThemes.green: GreenTheme.colors,
  };

  // Centralized Color Access with Fallback
  static Map<String, Color> get colors =>
      _themeMap[currentTheme] ?? LightTheme.colors;

  static Color _getColor(String key) {
    // Check if the key exists in the current theme; otherwise, fallback to LightTheme
    return colors[key] ?? LightTheme.colors[key] ?? Colors.transparent;
  }

  static Color get primary => _getColor(ThemeColorKeys.primary);
  static Color get background => _getColor(ThemeColorKeys.background);
  static Color get foreGround => _getColor('foreGround');
  static Color get cardBorder => _getColor('cardBorder');
  static Color get depth => _getColor('depth');
  static Color get secondary => _getColor('secondary');
  static Color get primaryText => _getColor('primaryText');
  static Color get secondaryText => _getColor('secondaryText');
  static Color get positiveIndicator => _getColor('positiveIndicator');
  static Color get negativeIndicator => _getColor('negativeIndicator');
  static Color get textColor => _getColor('textColor');
}
