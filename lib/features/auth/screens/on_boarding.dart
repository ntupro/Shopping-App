import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/image_strings.dart';
import 'package:todo_app/utils/constants/text_strings.dart';
import 'package:todo_app/utils/device/device_utility.dart';
import 'package:todo_app/utils/helpers/helper_functions.dart';
import 'package:todo_app/utils/helpers/logger_helper.dart';

import 'onboarding/widgets/onboarding_dot_navigation.dart';
import 'onboarding/widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                coverImg: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                coverImg: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                coverImg: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
              ),
            ],
          ),

          /// Skip Button

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
        ],
      ),
    );
  }
}
