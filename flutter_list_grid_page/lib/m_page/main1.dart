import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('PageView'),
          ),
          body: PageView(
            controller: PageController(
              initialPage: 2,
              viewportFraction: 0.5,
            ),
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
