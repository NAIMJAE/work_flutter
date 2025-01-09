import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            // alignment: Alignment.center,
            children: [
              Positioned(
                  left: 50,
                  bottom: 50,
                  child: Container(width: 200, height: 200, color: Colors.red)),
              Positioned(
                  left: 10,
                  bottom: 10,
                  child:
                      Container(width: 100, height: 100, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
