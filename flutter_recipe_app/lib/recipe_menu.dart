import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 주축 방향과
        children: [
          _buildMenuIcon(Icons.food_bank, 'ALL'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.emoji_food_beverage, 'Coffee'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.fastfood, 'Burger'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }

  // Container 위젯을 꾸며주고 싶다면
  Widget _buildMenuIcon(IconData mIcon, String text) {
    return Container(
      // Container에 color과 decoration을 같이쓰면 에러(버그)
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 센터 정렬
        children: [
          Icon(
            mIcon,
            color: Colors.red,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
