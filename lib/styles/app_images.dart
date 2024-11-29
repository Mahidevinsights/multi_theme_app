import 'package:multi_theme_app/styles/multi_themes/blue_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/dark_theme.dart';
import 'package:multi_theme_app/styles/multi_themes/light_theme.dart';
import 'package:multi_theme_app/utils/enums.dart';
import 'multi_themes/green_theme.dart';

class AppImages {
  static AppThemes currentTheme = AppThemes.light;

  // Theme Map
  static final _themeMap = {
    AppThemes.light: LightTheme.images,
    AppThemes.dark: DarkTheme.images,
    AppThemes.blue: BlueTheme.images,
    AppThemes.green: GreenTheme.images,
  };

  // Centralized Image Access with Fallback
  static Map<String, String> get imagePath {
    return _themeMap[currentTheme] ?? LightTheme.images; // Default fallback
  }

  static String _getImage(String key) {
    // Check if the key exists in the current theme; otherwise, fallback to LightTheme
    return imagePath[key] ?? LightTheme.images[key] ?? '';
  }

  static String get mic => _getImage('mic');
  static String get search => _getImage('search');
  static String get statePic => _getImage('ap_state');
}
