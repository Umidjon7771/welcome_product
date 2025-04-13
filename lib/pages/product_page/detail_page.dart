import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/cart_page/cart.dart';
import 'package:welcome_product_ui/pages/product_page/comments_page.dart';
import 'package:welcome_product_ui/pages/main.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String price;
  final String imageUrl;
  const DetailPage(
      {super.key,
      required this.name,
      required this.price,
      required this.imageUrl});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          if (index == 1) {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
              currentIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.name,
          style: const TextStyle(fontSize: 36),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "                                                  ${widget.price}\$",
              style: const TextStyle(fontSize: 22),
            ),
            Image.network(
              widget.imageUrl,
              height: 400,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Furniture",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i <= 5; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                const SizedBox(
                  width: 10,
                ),
                SelectableText.rich(
                  TextSpan(
                    text: '124 review',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    mouseCursor: SystemMouseCursors.click,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Product3(),
                          ),
                        );
                      },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              text: "Add to Card",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
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
