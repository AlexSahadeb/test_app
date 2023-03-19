import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.image, required this.name});

  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
