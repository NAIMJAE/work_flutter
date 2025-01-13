import 'package:flutter/material.dart';

class THomePage extends StatelessWidget {
  const THomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            Text('홈페이지', style: TextStyle(fontSize: 30)),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('뒤로가기'),
            )
          ],
        ),
      ),
    );
  }
}
