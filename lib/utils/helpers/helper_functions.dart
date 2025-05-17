import 'package:flutter/material.dart';
import 'package:todo_app/utils/helpers/logger_helper.dart';

class THelperFunctions {
  static void navigateToScreen(BuildContext context, Widget screen) {
    LoggerHelper.info("Navigating to screen: ${screen.runtimeType}");
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static void popScreen(BuildContext context) {
    LoggerHelper.info("Popping current screen.");
    Navigator.pop(context);
  }

  static void navigateReplacementToScreen(BuildContext context, Widget screen) {
    LoggerHelper.info(
      "Navigating with replacement to screen: ${screen.runtimeType}",
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    LoggerHelper.debug("Truncating text to max length $maxLength.");
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    LoggerHelper.info("Is dark mode: $isDark");
    return isDark;
  }

  static Size screenSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    LoggerHelper.debug("Screen size: ${size.width}x${size.height}");
    return size;
  }

  static double screenHeight(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    LoggerHelper.debug("Screen height: $height");
    return height;
  }

  static double screenWidth(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    LoggerHelper.debug("Screen width: $width");
    return width;
  }

  // static String getFormattedDate(
  //   DateTime date, {
  //   String format = 'dd MMM yyyy',
  // }) {
  //   String formattedDate = DateFormat(format).format(date);
  //   LoggerHelper.info("Formatted date: $formattedDate");
  //   return formattedDate;
  // }

  static List<T> removeDuplicates<T>(List<T> list) {
    LoggerHelper.debug("Removing duplicates from list.");
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    LoggerHelper.debug("Wrapping widgets into rows of size $rowSize.");
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static void hideKeyboard() {
    LoggerHelper.info("Hiding keyboard");
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
