import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/sizes.dart';
import 'package:todo_app/utils/constants/text_strings.dart';
import 'package:todo_app/utils/constants/text_style.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: TColors.neutral09Color),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Top cover image + back button
            Container(
              height: 350,
              // color: Colors.yellow,
              child: Image(
                width: THelperFunctions.screenWidth(context),
                fit: BoxFit.cover,
                image: AssetImage(TImages.loginCover),
              ),
            ),
            const SizedBox(height: 50),

            /// Form
            Padding(
              padding: const EdgeInsets.all(TSizes.paddingDefault),
              child: Form(
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: TTexts.email,
                        labelText: TTexts.hello,
                        contentPadding: EdgeInsets.only(bottom: 6),
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
                    const SizedBox(height: 22),

                    /// Remember Me + Forget Password
                    Container(
                      // color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.green,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 18.0,
                                  width: 18.0,
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  TTexts.rememberMe,
                                  style: TTextStyles.bodyRegular12.copyWith(
                                    color: TColors.neutral04Color,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              TTexts.forgetPassword,
                              style: TTextStyles.bodyRegular12.copyWith(
                                color: TColors.primaryMainColor,
                              ),
                            ),
                          ),
                        ],
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
                            Icon(Iconsax.google_1),
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
                            Icon(Iconsax.facebook),
                            SizedBox(width: 8),
                            Text(TTexts.signInWithGoogle.toUpperCase()),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),

                    /// Don't have an account?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          TTexts.noAccount,
                          style: TTextStyles.bodyRegular12.copyWith(
                            color: TColors.neutral01Color,
                          ),
                        ),
                        const SizedBox(width: 4),

                        InkWell(
                          onTap: () {},
                          child: Text(
                            TTexts.register,
                            style: TTextStyles.bodyRegular12.copyWith(
                              color: TColors.primaryMainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
