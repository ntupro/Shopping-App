import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/text_style.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    suffixIconColor: TColors.neutral04Color,

    /// Label Text (Not focus)
    labelStyle: TTextStyles.bodyRegular14.copyWith(
      color: TColors.neutral04Color,
    ),

    /// Label Text on Top (Focus)
    floatingLabelStyle: TTextStyles.bodyRegular10.copyWith(
      color: TColors.neutral04Color,
    ),

    /// Hint Text (Focus)
    hintStyle: TTextStyles.bodyRegular14.copyWith(
      color: TColors.neutral04Color,
    ),

    border: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: TColors.neutral05Color),
    ),

    /// ERROR style
    // errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),

    // floatingLabelStyle: const TextStyle().copyWith(
    //   color: TColors.black.withValues(alpha: 0.8),
    // ),

    // enabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //   borderSide: const BorderSide(width: 1, color: TColors.grey),
    // ),
    // focusedBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //   borderSide: const BorderSide(width: 1, color: TColors.dark),
    // ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: TColors.secondary05Color),
    ),
    // focusedErrorBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //   borderSide: const BorderSide(width: 2, color: TColors.warning),
    // ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    suffixIconColor: TColors.neutral04Color,

    /// Label Text (Not focus)
    labelStyle: TTextStyles.bodyRegular14.copyWith(
      color: TColors.neutral04Color,
    ),

    /// Label Text on Top (Focus)
    floatingLabelStyle: TTextStyles.bodyRegular10.copyWith(
      color: TColors.neutral04Color,
    ),

    /// Hint Text (Focus)
    hintStyle: TTextStyles.bodyRegular14.copyWith(
      color: TColors.neutral04Color,
    ),

    border: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: TColors.neutral05Color),
    ),

    errorStyle: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.redAccent,
    ),

    //   enabledBorder: const OutlineInputBorder().copyWith(
    //     borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //     borderSide: const BorderSide(width: 1, color: TColors.darkGrey),
    //   ),
    //   focusedBorder: const OutlineInputBorder().copyWith(
    //     borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //     borderSide: const BorderSide(width: 1, color: TColors.white),
    //   ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: TColors.secondary05Color),
    ),
    //   focusedErrorBorder: const OutlineInputBorder().copyWith(
    //     borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
    //     borderSide: const BorderSide(width: 2, color: TColors.warning),
    //   ),
  );
}
