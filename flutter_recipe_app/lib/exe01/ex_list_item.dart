import 'package:flutter/material.dart';

class ExListItem extends StatelessWidget {
  final String imageName;
  final String imageTitle;

  const ExListItem(this.imageName, this.imageTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/${imageName}.jpeg'),
          ),
          Text(
            imageTitle,
            style: TextStyle(fontSize: 30),
          ),
          Text('coffee is ...')
        ],
      ),
    );
  }
}
