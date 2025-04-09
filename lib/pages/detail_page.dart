

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/product_3.dart';
import 'package:welcome_product_ui/welcome_page.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(fontSize: 36),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "                                                  ${widget.price}\$",
              style: TextStyle(fontSize: 22),
            ),
            Image.network(
              widget.imageUrl,
              height: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Furniture",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i <= 5; i++)
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                SizedBox(
                  width: 10,
                ),
                SelectableText.rich(
                  TextSpan(
                    text: '124 review',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    mouseCursor: SystemMouseCursors.click,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product3(),
                          ),
                        );
                      },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(text: "Add to Card"),
          ],
        ),
      ),
    );
  }
}
