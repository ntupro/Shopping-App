import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/common/success_screen/success_screen.dart';
import 'package:todo_app/features/auth/screens/login/login.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_header.dart';
import 'package:todo_app/utils/constants/text_strings.dart';
import 'package:todo_app/utils/constants/text_style.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                TTexts.confirmEmailTitle,
                style: TTextStyles.headlineRegular30.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),

              /// CONFIRM EMAIL
              const SizedBox(height: 10),
              Text(
                TTexts.confirmEmail,
                style: TTextStyles.labelMedium12.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),

              const SizedBox(height: 10),
              Text(
                TTexts.confirmEmailSubtitle,
                style: TTextStyles.paragraphRegular12.copyWith(
                  color:
                      Theme.of(context).inputDecorationTheme.labelStyle!.color,
                ),
              ),

              const SizedBox(height: 33),

              /// Continue & Resend Email
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => LoginScreen()),
                        ),
                      ),
                  child: Text(TTexts.tContinue.toUpperCase()),
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SizedBox(width: 8), Text(TTexts.resendEmail)],
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
