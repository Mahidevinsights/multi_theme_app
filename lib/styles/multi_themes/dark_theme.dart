import 'package:flutter/material.dart';

import '../app_constants.dart/theme_const_keys.dart';

class DarkTheme {
  //const colors - can add new colors here
  static const Map<String, Color> colors = {
 
    ThemeColorKeys.primary: Color(0xFFF8AF0F),
    ThemeColorKeys.secondary: Color(0xFFFF9518),
    ThemeColorKeys.background: Color(0xFF0F1014),
    ThemeColorKeys.foreGround: Color(0xFF171A22),
    ThemeColorKeys.cardBorder: Color(0xFF313749),
    ThemeColorKeys.depth: Color(0xFF020203),
    ThemeColorKeys.primaryText: Color(0xFFFFFFFF),
    ThemeColorKeys.secondaryText: Color(0xFFA6A4CC),
    ThemeColorKeys.positiveIndicator: Color(0xFF009B00),
    ThemeColorKeys.negativeIndicator: Color(0xFFD13636),
    ThemeColorKeys.textColor: Color(0xFFFFFFFF),
    //m
    ThemeColorKeys.tabActiveText: Color(0xFFFFFFFF),
    ThemeColorKeys.tabInActiveText: Color(0xFF7D7D8D),
    ThemeColorKeys.bottomAppBarColor: Color(0xFF171A22),
    ThemeColorKeys.investorProfileBg: Color(0xFF31313B),
    ThemeColorKeys.investorProfileBorder: Color(0xFFF59E0B),
    
  };

  //const images - can add new images here
  static const Map<String, String> images = {
    'mic': 'assets/images/mic_dark.png',
    'search': 'assets/images/search_dark.png',
    'ap_state': 'assets/svg/ap_dark.svg',
  };
}
