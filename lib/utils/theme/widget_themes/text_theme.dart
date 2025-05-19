import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontFamily: 'BebasNeue',
      fontSize: 54.0,
      fontWeight: FontWeight.normal, // Regular
      height: 52 / 54, // height = lightHeight / fontSize
      letterSpacing: 0.0,
      color: TColors.neutral09Color,
    ),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontFamily: 'BebasNeue',
      fontSize: 54.0,
      fontWeight: FontWeight.normal, // Regular
      height: 52 / 54, // height = lightHeight / fontSize
      letterSpacing: 0.0,
      color: TColors.neutral09Color,
    ),
  );
}
