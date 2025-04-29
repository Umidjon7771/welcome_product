import 'package:flutter/material.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/password/new_password.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/sign_in.dart';
import 'package:welcome_product_ui/pages/main.dart';

class CongratulationPage extends StatelessWidget {
  const CongratulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 40,
                color: AppColors.deepPurple,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Your account has been\nsuccefully created.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 300,
            ),
            MyButton(
              text: "Sign In",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPassword(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
