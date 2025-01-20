import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/blog/cart_page.dart';
import 'package:flutter_statement_v01/blog/list_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  void _selectedIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('상태관리')),
        body: IndexedStack(
          index: pageIndex,
          children: [
            ListPage(),
            CartPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'cart'),
          ],
          onTap: _selectedIndex,
        ),
      ),
    );
  }
}
