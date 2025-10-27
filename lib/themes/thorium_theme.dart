import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class ThoriumTheme extends BaseTheme {
  static const teal = Color(0xFF75F3FF);

  static const orange = Color(0xFFFFBA59);

  static const orangeDark = Color(0xFFBF8026);

  static const purpleDark = Color(0xFF200A40);

  static const purpleLight = Color(0xFF2A1052);

  static const purpleDarkest = Color(0xFF200A40);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  bool isLightTheme = false;

  Color primary = teal;
  Color primary60 = teal.withOpacitySafe(0.6);
  Color primary45 = teal.withOpacitySafe(0.45);
  Color primary30 = teal.withOpacitySafe(0.3);
  Color primary20 = teal.withOpacitySafe(0.2);
  Color primary15 = teal.withOpacitySafe(0.15);
  Color primary10 = teal.withOpacitySafe(0.1);

  Color success = orange;
  Color success60 = orange.withOpacitySafe(0.6);
  Color success30 = orange.withOpacitySafe(0.3);
  Color success15 = orange.withOpacitySafe(0.15);

  Color successDark = orangeDark;
  Color successDark30 = orangeDark.withOpacitySafe(0.3);

  Color background = purpleDark;
  Color background40 = purpleDark.withOpacitySafe(0.4);
  Color background00 = purpleDark.withOpacitySafe(0.0);

  Color backgroundDark = purpleLight;
  Color backgroundDark00 = purpleLight.withOpacitySafe(0.0);

  Color backgroundDarkest = purpleDarkest;

  Color text = white.withOpacitySafe(0.9);
  Color text60 = white.withOpacitySafe(0.6);
  Color text45 = white.withOpacitySafe(0.45);
  Color text30 = white.withOpacitySafe(0.3);
  Color text20 = white.withOpacitySafe(0.2);
  Color text15 = white.withOpacitySafe(0.15);
  Color text10 = white.withOpacitySafe(0.1);
  Color text05 = white.withOpacitySafe(0.05);
  Color text03 = white.withOpacitySafe(0.03);

  Color overlay90 = black.withOpacitySafe(0.9);
  Color overlay85 = black.withOpacitySafe(0.85);
  Color overlay80 = black.withOpacitySafe(0.8);
  Color overlay70 = black.withOpacitySafe(0.7);
  Color overlay50 = black.withOpacitySafe(0.5);
  Color overlay30 = black.withOpacitySafe(0.3);
  Color overlay20 = black.withOpacitySafe(0.2);

  Color barrier = black.withOpacitySafe(0.7);
  Color barrierWeaker = black.withOpacitySafe(0.4);
  Color barrierWeakest = black.withOpacitySafe(0.3);
  Color barrierStronger = black.withOpacitySafe(0.85);

  Color animationOverlayMedium = black.withOpacitySafe(0.7);
  Color animationOverlayStrong = black.withOpacitySafe(0.85);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
