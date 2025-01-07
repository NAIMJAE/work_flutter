import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExRecipeMenu extends StatelessWidget {
  const ExRecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _menuBox(Icons.menu_book, 'ALL'),
          _menuBox(Icons.coffee, 'Coffee'),
          _menuBox(Icons.fastfood, 'Burger'),
          _menuBox(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }

  Widget _menuBox(IconData icon, String text) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(height: 4),
          Text(text, style: TextStyle(fontSize: 20, color: Colors.green)),
        ],
      ),
    );
  }
}
