import 'package:flutter/material.dart';

class Product3 extends StatelessWidget {
  const Product3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Reviews(45)"),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyColumn(
                image:
                    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                name: 'Jessie Phelps',
                mainComment: 'Greet Chair',
              ),
              MyColumn(
                image:
                    'https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww',
                name: 'Larry May',
                mainComment: 'Love New chairs',
              ),
              MyColumn(
                image:
                    'https://media.istockphoto.com/id/1062439436/photo/i-know-ill-get-to-that-milestone.jpg?s=612x612&w=0&k=20&c=13QATNeGy55dYZNSsLAKeIs-OAErtekKCDJYRhSeuRw=',
                name: 'Bradley Parks',
                mainComment: 'Place to relax in bedroom',
              ),
              MyColumn(
                image:
                    'https://t3.ftcdn.net/jpg/05/83/11/74/360_F_583117430_JDF5aopHtWrgr7A7EQ2wtx3Zdckfgr9A.jpg',
                name: 'Jackson Rogers',
                mainComment: 'A bit of a wait, but worth it',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  final String image;
  final String name;
  final String mainComment;
  const MyColumn({
    super.key,
    required this.image,
    required this.name,
    required this.mainComment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
          subtitle: Row(
            children: [
              for (int i = 1; i <= 5; i++)
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
            ],
          ),
        ),
        Text(
          mainComment,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Size and color blends well with our mid century home\nSturdy and comfortable. Very happy with purchase!.",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Divider(),
      ],
    );
  }
}

// done
