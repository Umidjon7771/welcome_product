import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/main.dart';

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
                  color: Colors.deepPurpleAccent.shade700,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Instructions sent!",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.deepPurpleAccent.shade700,
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
                    color: Colors.deepPurpleAccent.shade700,
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
