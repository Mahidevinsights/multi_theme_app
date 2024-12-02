import 'package:flutter/material.dart';

import '../app_constants.dart/theme_const_keys.dart';

class LightTheme {
  //const colors - can add new colors here
  static const Map<String, Color> colors = {
    'primary': Color(0xFFFCAF17),
    'background': Color(0xFFFFFFFF),
    'foreGround': Color(0xFFF6F6F6),
    'cardBorder': Color(0xFFDDDDDD),
    'depth': Color(0xFFECECEC),
    'secondary': Color(0xFFFF9518),
    'primaryText': Color(0xFF000000),
    'secondaryText': Color(0xFF666666),
    'positiveIndicator': Color(0xFF009B00),
    'negativeIndicator': Color(0xFFD13636),
    'textColor': Color(0xFF000000),
  };

  //const images - can add new images here
  static const Map<String, String> images = {
    'mic': 'assets/images/mic_light.png',
    'search': 'assets/images/search_light.png',
    'ap_state': 'assets/svg/ap_light.svg',
  };
}

class LightTheme2 {
  static const Map<String, Color> colors = {
    ThemeColorKeys.primary: Color(0xFFFCAF17),
    ThemeColorKeys.secondary: Color(0xFFFF9518),
    ThemeColorKeys.background: Color(0xFFFFFFFF),
    ThemeColorKeys.foreGround: Color(0xFFF6F6F6),
    ThemeColorKeys.cardBorder: Color(0xFFDDDDDD),
    ThemeColorKeys.depth: Color(0xFFECECEC),
    ThemeColorKeys.primaryText: Color(0xFF000000),
    ThemeColorKeys.secondaryText: Color(0xFF666666),
    ThemeColorKeys.positiveIndicator: Color(0xFF009B00),
    ThemeColorKeys.negativeIndicator: Color(0xFFD13636),
    ThemeColorKeys.textColor: Color(0xFF000000),
  };
}
