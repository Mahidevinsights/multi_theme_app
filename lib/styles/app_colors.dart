import 'package:flutter/material.dart';
import 'package:multi_theme_app/utils/enums.dart';

class AppColors {
  // Light Theme Colors
  static const Color primaryLight = Colors.blue;
  static const Color backgroundLight = Colors.white;
  static const Color textLight = Colors.black;
  static const Color headingTextLight = Colors.black87;
  static const Color subheadingTextLight = Colors.black54;
  static const Color buttonTextLight = Colors.white;

  // Dark Theme Colors
  static const Color primaryDark = Colors.blueAccent;
  static const Color backgroundDark = Color.fromARGB(255, 36, 35, 35);
  static const Color textDark = Colors.white;
  static const Color headingTextDark = Colors.white70;
  static const Color subheadingTextDark = Colors.white60;
  static const Color buttonTextDark = Colors.black;

  // Blue Theme Colors
  static const Color primaryBlue = Colors.blue;
  static const Color backgroundBlue = Colors.lightBlue;
  static const Color textBlue = Colors.blue;
  static const Color headingTextBlue = Colors.blue;
  static const Color subheadingTextBlue = Colors.blue;
  static const Color buttonTextBlue = Colors.white;

  // Theme Color Maps
  static const Map<String, Color> lightColors = {
    'primary': primaryLight,
    'background': backgroundLight,
    'text': textLight,
    'headingText': headingTextLight,
    'subheadingText': subheadingTextLight,
    'buttonText': buttonTextLight,
  };

  static const Map<String, Color> darkColors = {
    'primary': primaryDark,
    'background': backgroundDark,
    'text': textDark,
    'headingText': headingTextDark,
    'subheadingText': subheadingTextDark,
    'buttonText': buttonTextDark,
  };

  static const Map<String, Color> blueColors = {
    'primary': primaryBlue,
    'background': backgroundBlue,
    'text': textBlue,
    'headingText': headingTextBlue,
    'subheadingText': subheadingTextBlue,
    'buttonText': buttonTextBlue,
  };

  // Map to Associate Themes
  static const Map<AppThemes, Map<String, Color>> themes = {
    AppThemes.light: lightColors,
    AppThemes.dark: darkColors,
    AppThemes.blue: blueColors,
  };

  // Current Theme
  static AppThemes currentTheme = AppThemes.light;

  // Dynamic Accessor Methods
  static Color get primary => themes[currentTheme]!['primary']!;
  static Color get background => themes[currentTheme]!['background']!;
  static Color get textColor => themes[currentTheme]!['text']!;
  static Color get headingText => themes[currentTheme]!['headingText']!;
  static Color get subheadingText => themes[currentTheme]!['subheadingText']!;
  static Color get buttonText => themes[currentTheme]!['buttonText']!;
}
