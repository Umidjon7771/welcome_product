import 'package:flutter/material.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/main.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/password/new_password.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/password/new_password_ui.dart';

class IntroctionsSend extends StatefulWidget {
  const IntroctionsSend({super.key});

  @override
  State<IntroctionsSend> createState() => _IntroctionsSendState();
}

class _IntroctionsSendState extends State<IntroctionsSend> {
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
                Icon(
                  Icons.done_all_rounded,
                  size: 50,
                  color: AppColors.deepPurple,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Instructions sent!",
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Check your inbox and follow the\ninstructions to reset your password.",
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
                  text: "Go to Email",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPassword()));
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
