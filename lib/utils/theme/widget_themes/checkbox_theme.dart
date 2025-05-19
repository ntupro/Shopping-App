import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TCheckboxTheme {
  TCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.neutral09Color;
      } else {
        return TColors.neutral01Color;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.primaryMainColor;
      } else {
        return TColors.neutral09Color;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    // checkColor: WidgetStateProperty.resolveWith((states) {
    //   if (states.contains(WidgetState.selected)) {
    //     return TColors.white;
    //   } else {
    //     return TColors.black;
    //   }
    // }),
    // fillColor: WidgetStateProperty.resolveWith((states) {
    //   if (states.contains(WidgetState.selected)) {
    //     return TColors.primary;
    //   } else {
    //     return Colors.transparent;
    //   }
    // }),
  );
}
