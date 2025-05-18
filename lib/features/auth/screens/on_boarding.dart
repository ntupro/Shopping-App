import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:todo_app/utils/constants/image_strings.dart';
import 'package:todo_app/utils/constants/text_strings.dart';

import 'onboarding/widgets/onboarding_dot_navigation.dart';
import 'onboarding/widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Inject controller
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (int index) {
              controller.currentPageIndex(index);
            },
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
