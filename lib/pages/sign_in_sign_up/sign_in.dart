import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/forget_password/forget_password.dart';
import 'package:welcome_product_ui/pages/product_page/product_page.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/for_user.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/sign_up.dart';
import 'package:welcome_product_ui/pages/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

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
              "Sign In",
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
              height: 40,
            ),
            Center(
              child: MyButton(
                text: "Sign in",
                onTap: () {
                  String enteredEmail = _controllerEmail.text.trim();
                  String enteredPassword = _controllerPassword.text.trim();
                  if (enteredEmail == user["email"] &&
                      enteredPassword == user["password"]) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Product1()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("Your data is miskate!\nPlease try again"),
                      ),
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MySecondButton(
              onTap: () {
                //////////
              },
              text: "Sign in with Facebook",
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SelectableText.rich(
                TextSpan(
                  text: "Don't have an account?  ",
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign Up",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                          /////
                        },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SelectableText.rich(
                TextSpan(
                  text: "Forgot password",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // forgot paswwordga otishi kerak

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySecondButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MySecondButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 75,
          width: 395,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[100],
            border: Border.all(
              width: 2,
              color: Colors.deepPurpleAccent,
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
