import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ImageChanger(), // StatefulWidget 사용
        ),
      ),
    );
  }
}

class ImageChanger extends StatefulWidget {
  @override
  _ImageChangerState createState() => _ImageChangerState();
}

class _ImageChangerState extends State<ImageChanger> {
  // 상태 변수: 이미지 URL (기본 이미지)
  String imageUrl = 'https://picsum.photos/id/237/200/300';

  // 버튼 클릭 시 이미지 변경
  void changeImage(num) {
    setState(() {
      imageUrl = 'https://picsum.photos/id/${num}/200/300';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget 예제')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 이미지 출력
            Image.network(imageUrl),
            SizedBox(height: 20),
            // 버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    changeImage('1');
                  },
                  child: Text('이미지 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeImage('2');
                  },
                  child: Text('이미지 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeImage('3');
                  },
                  child: Text('이미지 3'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
