import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/auth/screens/onboarding/on_boarding.dart';
import 'package:todo_app/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.dartTheme,
      home: OnBoardingScreen(),
    );
  }
}
