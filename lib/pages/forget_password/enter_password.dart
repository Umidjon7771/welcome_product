import 'package:flutter/material.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/main.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controllerPassword = TextEditingController();
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
                Text(
                  "Check Password",
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your password to check",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerPassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                  text: "Check",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
