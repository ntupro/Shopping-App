import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:todo_app/utils/constants/image_strings.dart';
import 'package:todo_app/utils/constants/sizes.dart';
import 'package:todo_app/utils/constants/text_strings.dart';
import 'package:todo_app/utils/constants/text_style.dart';

import '../../../../utils/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: TColors.neutral01Color),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                TTexts.createYourAccount,
                style: TTextStyles.headlineRegular30.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),

              const SizedBox(height: 56),
              Container(
                // color: Colors.yellow,
                child: Form(
                  child: Column(
                    children: [
                      /// First name + Last name
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: TTexts.firstName,
                                contentPadding: EdgeInsets.only(bottom: 6),
                                suffixIcon: Icon(Iconsax.tick_circle),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: TTexts.lastName,
                                contentPadding: EdgeInsets.only(bottom: 6),
                                suffixIcon: Icon(Iconsax.tick_circle),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwFormField),

                      /// Email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: TTexts.email,
                          contentPadding: EdgeInsets.only(bottom: 6),
                          suffixIcon: Icon(Iconsax.tick_circle),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwFormField),

                      /// Phone
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: TTexts.phoneNumber,
                          contentPadding: EdgeInsets.only(bottom: 6),
                          suffixIcon: Icon(Iconsax.tick_circle),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwFormField),

                      /// Password
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: TTexts.password,
                          contentPadding: EdgeInsets.only(bottom: 6),
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwFormField),

                      /// Password
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: TTexts.confirmPassword,
                          contentPadding: EdgeInsets.only(bottom: 6),
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwSignInButton),

                      /// Sign In
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () {},
                          child: Text(TTexts.signIn.toUpperCase()),
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// Sign In With Google
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                TImages.googleIcon,
                                semanticsLabel: 'Google Icon',
                              ),
                              SizedBox(width: 8),
                              Text(TTexts.signInWithGoogle.toUpperCase()),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// Sign In With Facebook
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                TImages.facebookIcon,
                                semanticsLabel: 'Facebook Icon',
                              ),
                              SizedBox(width: 8),
                              Text(TTexts.signInWithGoogle.toUpperCase()),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 23),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
