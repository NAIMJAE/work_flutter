import 'package:flutter/material.dart';
import 'package:shopping_cart_app/components/shoppingcart_body.dart';
import 'package:shopping_cart_app/components/shoppingcart_header.dart';
import 'package:shopping_cart_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildShoppingCartAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 헤더
            ShoppingcartHeader(),

            // 디테일
            Expanded(child: ShoppingcartBody()),
          ],
        ),
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}
