import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      // color: Colors.yellow,
      child: Image(
        width: THelperFunctions.screenWidth(context),
        fit: BoxFit.cover,
        image: AssetImage(TImages.loginCover),
      ),
    );
  }
}
