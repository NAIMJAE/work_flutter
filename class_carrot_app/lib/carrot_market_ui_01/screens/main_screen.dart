import 'package:flutter/material.dart';

// Bottom Navigation을 가진 위젯
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('mainscreen'),
        ),
      ),
    );
  }
}
