import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    /// DEFAULT FOR ALL APP IF NOT SET
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.neutral01Color,
    ),
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
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.neutral09Color,
    ),
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
