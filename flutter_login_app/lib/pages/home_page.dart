import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: xlargeGap),
          Logo('Cart Soft'),
          const SizedBox(height: xlargeGap),
          TextButton(
            onPressed: () {
              // 1. 화면 스택 제거
              Navigator.pop(context);
            },
            child: Text('Get Started'),
          )
        ],
      ),
    );
  }
}
