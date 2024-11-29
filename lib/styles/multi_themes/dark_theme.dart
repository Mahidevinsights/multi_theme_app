import 'package:flutter/material.dart';

class DarkTheme {
  //const colors - can add new colors here
  static const Map<String, Color> colors = {
    'primary': Color(0xFFF8AF0F),
    'background': Color(0xFF0F1014),
    'foreGround': Color(0xFF171A22),
    'cardBorder': Color(0xFF313749),
    'depth': Color(0xFF020203),
    'secondary': Color(0xFFFF9518),
    'primaryText': Color(0xFFFFFFFF),
    'secondaryText': Color(0xFFA6A4CC),
    'positiveIndicator': Color(0xFF009B00),
    'negativeIndicator': Color(0xFFD13636),
    'textColor': Color(0xFFFFFFFF),
  };

  //const images - can add new images here
  static const Map<String, String> images = {
    'mic': 'assets/images/mic_dark.png',
    'search': 'assets/images/search_dark.png',
    'ap_state': 'assets/svg/ap_dark.svg',
  };
}
