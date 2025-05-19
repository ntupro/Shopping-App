import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/text_style.dart';

class TFillButtonTheme {
  TFillButtonTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static FilledButtonThemeData lightFillButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.neutral09Color,
      backgroundColor: TColors.primaryMainColor,
      disabledForegroundColor: TColors.neutral04Color,
      disabledBackgroundColor: TColors.neutral05Color,
      textStyle: TTextStyles.labelMedium12.copyWith(
        color: TColors.neutral09Color,
      ),
    ),
  );

  /// Customizable Dark Text Theme
  static FilledButtonThemeData darkFillButtonTheme = FilledButtonThemeData();
}
