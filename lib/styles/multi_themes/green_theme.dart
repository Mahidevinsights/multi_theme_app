import 'package:flutter/material.dart';

class GreenTheme {
  //const colors - can add new colors here
  static const Map<String, Color> colors = {
    'primary': Color.fromARGB(255, 109, 255, 51),
    'background': Color(0xFFFFFFFF),
    'foreGround': Color.fromARGB(255, 166, 248, 128),
    'cardBorder': Color(0xFFDDDDDD),
    'depth': Color(0xFFECECEC),
    'secondary': Color.fromARGB(255, 116, 255, 24),
    'primaryText': Color(0xFF000000),
    'secondaryText': Color(0xFF666666),
    'positiveIndicator': Color.fromARGB(255, 72, 0, 155),
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
