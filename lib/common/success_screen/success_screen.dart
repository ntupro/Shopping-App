import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/auth/screens/login/login.dart';
import 'package:todo_app/utils/constants/text_strings.dart';
import 'package:todo_app/utils/constants/text_style.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

              /// Title
              Text(
                title,
                style: TTextStyles.headlineRegular30.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),

              /// Subtitle
              const SizedBox(height: 5),
              Text(
                subTitle,
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
                  onPressed: onPressed,
                  child: Text(TTexts.tContinue.toUpperCase()),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
