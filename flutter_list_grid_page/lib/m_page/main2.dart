import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Character> charList = [
      Character('맹구', '맹구다'),
      Character('짱구', '짱구다'),
      Character('철수', '철수다'),
    ];

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Title'),
          ),
          body: PageView(
            controller: PageController(
              initialPage: 2, // 시작 페이지 설정
              viewportFraction: 0.9, // 페이지 비율
            ),
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/ch1.jpg',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      SizedBox(height: 4),
                      Text("Data", style: TextStyle(fontSize: 30)),
                      Text("sub", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Character {
  String name;
  String info;

  Character(this.name, this.info);
}
