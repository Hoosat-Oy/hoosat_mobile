import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class NeptuniumTheme extends BaseTheme {
  static const blue = Color(0xFF4A90E2);

  static const orange = Color(0xFFF9AE42);

  static const orangeDark = Color(0xFF9C671E);

  static const blueDark = Color(0xFF000034);

  static const blueLightish = Color(0xFF080840);

  static const blueDarkest = Color(0xFF000034);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  bool isLightTheme = false;

  Color primary = blue;
  Color primary60 = blue.withOpacitySafe(0.6);
  Color primary45 = blue.withOpacitySafe(0.45);
  Color primary30 = blue.withOpacitySafe(0.3);
  Color primary20 = blue.withOpacitySafe(0.2);
  Color primary15 = blue.withOpacitySafe(0.15);
  Color primary10 = blue.withOpacitySafe(0.1);

  Color success = orange;
  Color success60 = orange.withOpacitySafe(0.6);
  Color success30 = orange.withOpacitySafe(0.3);
  Color success15 = orange.withOpacitySafe(0.15);

  Color successDark = orangeDark;
  Color successDark30 = orangeDark.withOpacitySafe(0.3);

  Color background = blueDark;
  Color background40 = blueDark.withOpacitySafe(0.4);
  Color background00 = blueDark.withOpacitySafe(0.0);

  Color backgroundDark = blueLightish;
  Color backgroundDark00 = blueLightish.withOpacitySafe(0.0);

  Color backgroundDarkest = blueDarkest;

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

  Color barrier = black.withOpacitySafe(0.75);
  Color barrierWeaker = black.withOpacitySafe(0.45);
  Color barrierWeakest = black.withOpacitySafe(0.35);
  Color barrierStronger = black.withOpacitySafe(0.9);

  Color animationOverlayMedium = black.withOpacitySafe(0.75);
  Color animationOverlayStrong = black.withOpacitySafe(0.9);

  //Brightness brightness = Brightness.dark;

  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
