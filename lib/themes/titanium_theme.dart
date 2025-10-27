import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class TitaniumTheme extends BaseTheme {
  static const blueishGreen = Color(0xFF61C6AD);

  static const teal = Color(0xFFB5ED88);

  static const greenDark = Color(0xFF5F893D);

  static const tealDark = Color(0xFF041920);

  static const tealLight = Color(0xFF052029);

  static const tealDarkest = Color(0xFF041920);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  bool isLightTheme = false;

  Color primary = blueishGreen;
  Color primary60 = blueishGreen.withOpacitySafe(0.6);
  Color primary45 = blueishGreen.withOpacitySafe(0.45);
  Color primary30 = blueishGreen.withOpacitySafe(0.3);
  Color primary20 = blueishGreen.withOpacitySafe(0.2);
  Color primary15 = blueishGreen.withOpacitySafe(0.15);
  Color primary10 = blueishGreen.withOpacitySafe(0.1);

  Color success = teal;
  Color success60 = teal.withOpacitySafe(0.6);
  Color success30 = teal.withOpacitySafe(0.3);
  Color success15 = teal.withOpacitySafe(0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withOpacitySafe(0.3);

  Color background = tealDark;
  Color background40 = tealDark.withOpacitySafe(0.4);
  Color background00 = tealDark.withOpacitySafe(0.0);

  Color backgroundDark = tealLight;
  Color backgroundDark00 = tealLight.withOpacitySafe(0.0);

  Color backgroundDarkest = tealDarkest;

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
