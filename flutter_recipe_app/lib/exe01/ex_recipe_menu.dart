import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExRecipeMenu extends StatelessWidget {
  const ExRecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _menuBox(Icons.add, 'ALL'),
      ],
    );
  }

  Widget _menuBox(IconData icon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [Text(text)],
      ),
    );
  }
}
