import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/exe01/ex_recipe_title.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(CupertinoIcons.search, color: Colors.black),
          SizedBox(width: 8.0),
          Icon(CupertinoIcons.heart, color: Colors.red),
        ],
      ),
      body: Column(
        children: [
          ExRecipeTitle(),
        ],
      ),
    );
  }
}
