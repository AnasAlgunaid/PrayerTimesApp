import 'package:flutter/material.dart';

class Pallete {
  static const Color whiteBackground = Color.fromRGBO(255, 252, 249, 1);
  static const Color containerBackgroundLight =
      Color.fromRGBO(250, 243, 238, 1);
  static const Color primaryTextColor = Color.fromRGBO(46, 46, 62, 1);
  static const Color secondaryTextColor = Color.fromRGBO(95, 94, 105, 1);
  static const Color primaryOrangeColor = Color.fromRGBO(238, 117, 50, 1);
  static const Color secondaryOrangeColor = Color.fromRGBO(248, 217, 200, 1);

  ThemeData lightModeTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteBackground,
  );
}
