import 'package:flutter/material.dart';
import 'package:todo_app/utils/theme/widget_themes//text_theme.dart';
import 'package:todo_app/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:todo_app/utils/theme/widget_themes/fill_button_theme.dart';
import 'package:todo_app/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:todo_app/utils/theme/widget_themes/text_field_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    filledButtonTheme: TFillButtonTheme.lightFillButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    filledButtonTheme: TFillButtonTheme.darkFillButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
