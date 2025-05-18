import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/features/auth/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 8,
      right: 25,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: SlideEffect(
          spacing: 9.0,
          dotWidth: 8.0,
          dotHeight: 8.0,
          dotColor: TColors.neutral09Color,
          activeDotColor: TColors.primaryMainColor,
        ),
      ),
    );
  }
}
