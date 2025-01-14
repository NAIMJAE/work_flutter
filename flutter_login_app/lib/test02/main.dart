import 'package:flutter/material.dart';
import 'package:flutter_login_app/test02/t_home_page.dart';
import 'package:flutter_login_app/test02/t_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => TLoginPage(),
        '/home': (context) => THomePage(),
      },
    );
  }
}
