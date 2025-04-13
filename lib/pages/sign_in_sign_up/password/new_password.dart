import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/product_page/product_page.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/for_user.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/password/new_password_ui.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/sign_up.dart';
import 'package:welcome_product_ui/pages/main.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 180, left: 40, right: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Password",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent.shade700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _newPassword,
              decoration: InputDecoration(
                hintText: "New Password",
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _confirmPassword,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: MyButton(
                text: "Save",
                onTap: () {
                  if (_confirmPassword.text.length >= 8 &&
                      _newPassword.text.length >= 8) {
                    if (_confirmPassword.text == _newPassword.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Saved"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Not equal!!!"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Password's length can't be less than 8"),
                      ),
                    );
                  }

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPasswordUI()));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
