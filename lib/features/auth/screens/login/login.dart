import 'package:flutter/material.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_form.dart';
import 'package:todo_app/features/auth/screens/login/widgets/login_header.dart';
import 'package:todo_app/utils/constants/colors.dart';

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
            TLoginHeader(),
            const SizedBox(height: 50),

            /// Form
            TLoginForm(),
          ],
        ),
      ),
    );
  }
}
