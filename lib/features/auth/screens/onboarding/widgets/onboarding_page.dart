import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/helpers/logger_helper.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.coverImg,
    required this.title,
  });

  final String coverImg, title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: THelperFunctions.screenWidth(context),
          height: THelperFunctions.screenHeight(context),
          image: AssetImage(coverImg),
          fit: BoxFit.cover,
        ),

        Positioned(
          top: 485,
          left: 25,
          width: 186,
          child: Container(
            // color: Colors.yellow,
            width: 186,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: () {
                    LoggerHelper.debug("Arrow click...");
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(TImages.rightArrow),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
