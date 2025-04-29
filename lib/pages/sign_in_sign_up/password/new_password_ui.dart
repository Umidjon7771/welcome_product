import 'package:flutter/material.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/main.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/sign_in.dart';

class NewPasswordUI extends StatefulWidget {
  const NewPasswordUI({super.key});

  @override
  State<NewPasswordUI> createState() => _NewPasswordUIState();
}

class _NewPasswordUIState extends State<NewPasswordUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "You succesfully reset your password\nPlease, use your new password to sign in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                  text: "Sign in",
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
