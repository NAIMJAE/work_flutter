import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    child:
                        Container(width: 300, height: 300, color: Colors.blue)),
                Positioned(
                    child:
                        Container(width: 200, height: 200, color: Colors.red)),
                Positioned(
                    child: Container(
                        width: 100, height: 100, color: Colors.orange)),
                Positioned(
                    child:
                        Container(width: 50, height: 50, color: Colors.green)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
