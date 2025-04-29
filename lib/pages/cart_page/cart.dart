import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_product_ui/core/themes/app_colors.dart';
import 'package:welcome_product_ui/pages/cart_page/empty_cart.dart';
import 'package:welcome_product_ui/pages/main.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: "Back",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                trailing: IconButton(
                  onPressed: () {
                    setState(() {});
                    showCustomDialog(context);
                  },
                  icon: const Icon(Icons.delete_outline),
                ),
                title: const Text(
                  "Your Cart",
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: const Text("3 items"),
              ),
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://img.pikbest.com/png-images/qianku/beautiful-chair-cartoon-illustration_2159604.png!sw800",
              text: "Orange Chair",
              price: 879,
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://png.pngtree.com/png-vector/20191213/ourlarge/pngtree-blue-bike-illustration-vector-on-white-background-png-image_2070059.jpg",
              text: "Bike",
              price: 2800,
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://media.istockphoto.com/id/1155871066/ru/%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F/%D1%85%D0%BE%D0%BB%D0%BE%D0%B4%D0%B8%D0%BB%D1%8C%D0%BD%D0%B8%D0%BA-%D0%B2-%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D1%8F%D1%88%D0%BD%D0%BE%D0%BC-%D1%81%D1%82%D0%B8%D0%BB%D0%B5.jpg?s=612x612&w=0&k=20&c=LPo-gwzZyBCRz6ogYzERa_-YJyLhu-itT0XHtWVaUxk=",
              text: "Refrigator",
              price: 4200,
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://media.istockphoto.com/id/952477594/vector/cartoon-black-hd-tv-isolated-on-white.jpg?s=612x612&w=0&k=20&c=1nVkxTNp73OwPGQZsm-WuFo6-PGQ31zP22MN6dsOlhM=",
              text: "TV",
              price: 3000,
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://cdn-icons-png.flaticon.com/512/3495/3495775.png",
              text: "Phone",
              price: 1200,
            ),
            const Divider(),
            const EveryItem(
              pictureUrl:
                  "https://static.vecteezy.com/system/resources/previews/044/766/728/non_2x/t-shirt-cartoon-flat-color-png.png",
              text: "T-Shirt",
              price: 1200,
            ),
            const SizedBox(
              height: 80,
            ),
            MyButton(
              text: "Check Out",
              onTap: () {},
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class EveryItem extends StatefulWidget {
  final String pictureUrl;
  final String text;
  final double price;
  final String? count;

  const EveryItem({
    super.key,
    required this.pictureUrl,
    required this.text,
    required this.price,
    this.count,
  });

  @override
  State<EveryItem> createState() => _EveryItemState();
}

class _EveryItemState extends State<EveryItem> {
  int countA = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Image.network(
            widget.pictureUrl,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showCustomDialogDelete(context);
                        });
                      },
                      icon: const Icon(CupertinoIcons.delete),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "$countA",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        countA++;
                        setState(() {});
                      },
                      icon: const Icon(
                        CupertinoIcons.add,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "${widget.price * countA}  \$",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 200,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Empty Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Are you sure you want to delete all\nitems in your cart?",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    color: AppColors.grey100,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "  Cancel  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    color: AppColors.blue900,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EmptyCart()));
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "  Empty Cart  ",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showCustomDialogDelete(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 200,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Delete Chair ...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Are you sure you want to delete Chair\nitems from your cart?",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    color: AppColors.grey100,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "  Cancel  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    color: AppColors.blue900,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage()));
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "  Delete  ",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
