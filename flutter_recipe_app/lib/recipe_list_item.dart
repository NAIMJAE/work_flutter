import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String imageTitle;
  const RecipeListItem(this.imageName, this.imageTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/${imageName}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          // 텍스트
          Text(imageTitle, style: TextStyle(fontSize: 20)),
          Text('Have you ever......'),
        ],
      ),
    );
  }
}
