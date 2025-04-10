import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/product_page/product_page.dart';
import 'package:welcome_product_ui/pages/welcome_page.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.shopping_cart_sharp,
              size: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your cart is empty",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "Looking for ideas?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MyButton(
              text: "Explore New products",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Product1(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
