import 'package:flutter/material.dart';
import 'package:welcome_product_ui/pages/detail_page.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Product List",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 35,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyText(
                    text: "New",
                  ),
                  MyText(
                    text: "Furniture",
                  ),
                  MyText(
                    text: "Electronic",
                  ),
                  MyText(
                    text: "Fashion",
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Wrap(
                spacing: 30,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  MyGridTile(
                    image:
                        "https://img.pikbest.com/png-images/qianku/beautiful-chair-cartoon-illustration_2159604.png!sw800",
                    price: r"$879.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "Orange Chair",
                            price: '879.0',
                            imageUrl:
                                'https://img.pikbest.com/png-images/qianku/beautiful-chair-cartoon-illustration_2159604.png!sw800',
                          ),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  MyGridTile(
                    image:
                        "https://png.pngtree.com/png-vector/20191213/ourlarge/pngtree-blue-bike-illustration-vector-on-white-background-png-image_2070059.jpg",
                    price: r"$2800.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "Bike",
                            price: r'$2800.00',
                            imageUrl:
                                "https://png.pngtree.com/png-vector/20191213/ourlarge/pngtree-blue-bike-illustration-vector-on-white-background-png-image_2070059.jpg",
                          ),
                        ),
                      );
                    },
                  ),
                  MyGridTile(
                    image:
                        "https://media.istockphoto.com/id/1155871066/ru/%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F/%D1%85%D0%BE%D0%BB%D0%BE%D0%B4%D0%B8%D0%BB%D1%8C%D0%BD%D0%B8%D0%BA-%D0%B2-%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D1%8F%D1%88%D0%BD%D0%BE%D0%BC-%D1%81%D1%82%D0%B8%D0%BB%D0%B5.jpg?s=612x612&w=0&k=20&c=LPo-gwzZyBCRz6ogYzERa_-YJyLhu-itT0XHtWVaUxk=",
                    price: r"$4200.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "Refrigator",
                            price: r'$4200.00',
                            imageUrl:
                                "https://media.istockphoto.com/id/1155871066/ru/%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F/%D1%85%D0%BE%D0%BB%D0%BE%D0%B4%D0%B8%D0%BB%D1%8C%D0%BD%D0%B8%D0%BA-%D0%B2-%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D1%8F%D1%88%D0%BD%D0%BE%D0%BC-%D1%81%D1%82%D0%B8%D0%BB%D0%B5.jpg?s=612x612&w=0&k=20&c=LPo-gwzZyBCRz6ogYzERa_-YJyLhu-itT0XHtWVaUxk=",
                          ),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  MyGridTile(
                    image:
                        "https://media.istockphoto.com/id/952477594/vector/cartoon-black-hd-tv-isolated-on-white.jpg?s=612x612&w=0&k=20&c=1nVkxTNp73OwPGQZsm-WuFo6-PGQ31zP22MN6dsOlhM=",
                    price: r"$3000.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "TV",
                            price: r'$3000.00',
                            imageUrl:
                                "https://media.istockphoto.com/id/952477594/vector/cartoon-black-hd-tv-isolated-on-white.jpg?s=612x612&w=0&k=20&c=1nVkxTNp73OwPGQZsm-WuFo6-PGQ31zP22MN6dsOlhM=",
                          ),
                        ),
                      );
                    },
                  ),
                  MyGridTile(
                    image:
                        "https://cdn-icons-png.flaticon.com/512/3495/3495775.png",
                    price: r"$1200.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "Phone",
                            price: r'$1200.00',
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/512/3495/3495775.png",
                          ),
                        ),
                      );
                    },
                  ),
                  // Spacer(),
                  MyGridTile(
                    image:
                        "https://static.vecteezy.com/system/resources/previews/044/766/728/non_2x/t-shirt-cartoon-flat-color-png.png",
                    price: r"$200.00",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: "T-Shirt",
                            price: r'$200.0',
                            imageUrl:
                                "https://static.vecteezy.com/system/resources/previews/044/766/728/non_2x/t-shirt-cartoon-flat-color-png.png",
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18),
    );
  }
}

class MyGridTile extends StatelessWidget {
  final String image;
  final String price;
  final void Function()? onTap;

  const MyGridTile({
    super.key,
    required this.image,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 200,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          child: GridTile(
            footer: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "•••",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            child: Center(
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
