import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/sign_in_sign_up/sign_in.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      title: "Product App",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, bottom: 130),
          child: Column(
            children: [
              Text(
                "Shopin",
                style: TextStyle(
                  color: AppColors.blue,
                  letterSpacing: 20,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "Amazing Shopping",
                style: TextStyle(
                  color: AppColors.blue,
                  // letterSpacing: 20,
                  wordSpacing: 10,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Experience a new way\nof shopping.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              MyButton(
                text: "Explore",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 80,
      minWidth: 400,
      color: AppColors.blue,
      onPressed: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

