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

  // Centralized image Access
  static Map<String, String> get imagePath => _themeMap[currentTheme]!;

  static String get mic => imagePath['mic']!;
  static String get search => imagePath['search']!;
  static String get statePic => imagePath['ap_state']!;
}
