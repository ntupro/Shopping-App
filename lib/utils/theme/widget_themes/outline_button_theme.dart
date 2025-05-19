import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/text_style.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: TColors.neutral01Color,
          textStyle: TTextStyles.labelMedium12.copyWith(
            color: TColors.neutral01Color,
          ),
          side: const BorderSide(color: TColors.neutral05Color),
        ),
      );

  /// Customizable Dark Text Theme
  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData();
}
