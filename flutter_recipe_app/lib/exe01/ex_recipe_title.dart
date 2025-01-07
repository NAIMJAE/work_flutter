import 'package:flutter/material.dart';

class ExRecipeTitle extends StatelessWidget {
  const ExRecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text('Recipe', style: TextStyle(fontSize: 30)),
    );
  }
}
