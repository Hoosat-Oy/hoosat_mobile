import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class CarbonTheme extends BaseTheme {
  static const brightBlue = Color(0xFF99C1F0);

  static const green = Color(0xFF41E099);

  static const greenDark = Color(0xFF148A55);

  static const white = Color(0xFFFFFFFF);
  static const whiteish = Color(0xFFE9E9F2);

  static const black = Color(0xFF000000);
  static const blackBlueish = Color(0xFF0D1014);
  static const blackLighter = Color(0xFF0E0F0F);

  Color primary = brightBlue;
  Color primary60 = brightBlue.withOpacitySafe(0.6);
  Color primary45 = brightBlue.withOpacitySafe(0.45);
  Color primary30 = brightBlue.withOpacitySafe(0.3);
  Color primary20 = brightBlue.withOpacitySafe(0.2);
  Color primary15 = brightBlue.withOpacitySafe(0.15);
  Color primary10 = brightBlue.withOpacitySafe(0.1);

  Color success = green;
  Color success60 = green.withOpacitySafe(0.6);
  Color success30 = green.withOpacitySafe(0.3);
  Color success15 = green.withOpacitySafe(0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withOpacitySafe(0.3);

  Color background = black;
  Color background40 = black.withOpacitySafe(0.4);
  Color background00 = black.withOpacitySafe(0.0);

  Color backgroundDark = black;
  Color backgroundDark00 = black.withOpacitySafe(0.0);

  Color backgroundDarkest = blackLighter;

  Color text = whiteish.withOpacitySafe(0.9);
  Color text60 = whiteish.withOpacitySafe(0.6);
  Color text45 = whiteish.withOpacitySafe(0.45);
  Color text30 = whiteish.withOpacitySafe(0.3);
  Color text20 = whiteish.withOpacitySafe(0.2);
  Color text15 = whiteish.withOpacitySafe(0.15);
  Color text10 = whiteish.withOpacitySafe(0.1);
  Color text05 = whiteish.withOpacitySafe(0.05);
  Color text03 = whiteish.withOpacitySafe(0.03);

  Color overlay90 = blackLighter.withOpacitySafe(0.9);
  Color overlay85 = blackLighter.withOpacitySafe(0.85);
  Color overlay80 = blackLighter.withOpacitySafe(0.8);
  Color overlay70 = blackLighter.withOpacitySafe(0.7);
  Color overlay50 = blackLighter.withOpacitySafe(0.5);
  Color overlay30 = blackLighter.withOpacitySafe(0.3);
  Color overlay20 = blackLighter.withOpacitySafe(0.2);

  Color barrier = blackBlueish.withOpacitySafe(0.8);
  Color barrierWeaker = blackBlueish.withOpacitySafe(0.7);
  Color barrierWeakest = blackBlueish.withOpacitySafe(0.35);
  Color barrierStronger = blackBlueish.withOpacitySafe(0.9);

  Color animationOverlayMedium = blackBlueish.withOpacitySafe(0.8);
  Color animationOverlayStrong = blackBlueish.withOpacitySafe(0.9);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(
    color: white.withOpacitySafe(0.14),
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 1,
  );
  BoxShadow boxShadowButton = BoxShadow(
    color: brightBlue.withOpacitySafe(0.24),
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 0,
  );

  bool isLightTheme = false;
}
