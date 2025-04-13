import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/product_page/product_page.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/cussess.dart';
import 'package:welcome_product_ui/pages/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirm_password =
      TextEditingController();

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
              "Sign Up",
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
              controller: _controllerName,
              decoration: InputDecoration(
                hintText: "Name",
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
              controller: _controllerEmail,
              decoration: InputDecoration(
                hintText: "Email",
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
              controller: _controllerPassword,
              decoration: InputDecoration(
                hintText: "Password",
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
              controller: _controllerConfirm_password,
              decoration: InputDecoration(
                hintText: "Confirm password",
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
                text: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CongratulationPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SelectableText.rich(
                TextSpan(
                  text: "Already have an account?  ",
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign In",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          /////
                        },
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
