import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/forget_password/send.dart';
import 'package:welcome_product_ui/pages/main.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  EmailOTP myAuth = EmailOTP();

  final TextEditingController _controllerEmail = TextEditingController();
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
                Text(
                  "Password Reset",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your email address. We will send\na link to reset your password.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                  text: "Send",
                  onTap: () async {
                    if (_controllerEmail.text.isNotEmpty &&
                        _controllerEmail.text.endsWith("gmail.com")) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroctionsSend(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Your email is mistake"),
                        ),
                      );
                    }
                    myAuth.setConfig(
                      appEmail: "info.g12@gmail.com",
                      appName: "G12 Company",
                      userEmail: "umitjonumitjon660@gmail.com",
                      otpLength: 4,
                      otpType: OTPType.digitsOnly,
                    );
                    await myAuth.sendOTP();

                    bool sent = await myAuth.sendOTP();
                    if (sent) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Kod yuborildi")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Kod yuborilmadi")),
                      );
                    }
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
