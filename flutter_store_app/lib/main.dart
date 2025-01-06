// Flutter 동작시 반드시 필요
import 'package:flutter/material.dart';

// 플러터 초기 코드 작성
void main() {
  // 플러터는 거의 모든 것이 위젯으로 이루어 짐
  // 전달된 위젯을 최상위 위젯으로 설정하고 앱을 시작하는 함수
  runApp(MyApp());
} // end of main

// stl 단축키 활용
class MyApp extends StatelessWidget {
  // 생성자 - 매개변수 : 선택적 명명 매개변수
  MyApp({super.key});

  // 부모 클래스의 메서드를 재정의 하는 문법
  // build 함수는 화면에 그림을 그려주는 함수
  // BuildContext는 위젯 트리에서의 위치와 관련된 다양한 정보를 포함

  // Flutter를 개발할 때 맨 밑바닥부터 개발 하는 것은 힘들다.
  // 기본적인 개발을 할 수 있도록 매우 유용한 클래스를 제공
  // MaterialApp
  @override
  Widget build(BuildContext context) {
    // 생성자
    // home : (라벨) <-- 선택적 명명 매개변수로 설계
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Container 는 HTML의 div와 같음
      home: StorePage(),
    );
  }
} // end of MyApp

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 는 시각적 레이아웃 구조를 잡아주는 위젯
    return Scaffold(
      // SafeArea - 안전 영역 내에 자식 위젯들을 배치하도록 도와준다.
      body: SafeArea(
        child: Column(
          // 위젯은 자식 또는 자식들을 속성으로 가질 수 있다.
          children: [
            // 자식1
            // 패딩 위젯이나 마진의 값은 EdgeInsets 클래스로 감싸서 넣는다.
            Padding(
              padding: EdgeInsets.all(25.0),
              // Row 위젯은 자식 위젯들을 수평 방향으로 정렬시켜 주는 위젯
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Spacer 위젯은 남은 공간을 감지하여 위젯 간격을 조절할 때 활용 가능
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // 자식2
            // Expanded 위젯은 자식 위젯을 가용 공간에 맞게 확장시켜 배치하는 위젯
            Expanded(
                child: Image.asset(
              'assets/bag.jpeg',
              fit: BoxFit.cover,
            )),
            // SizedBox 위젯은 고정된 크기의 빈 공간을 만들거나 자식 위젯의 크기를 제한할 때 사용
            SizedBox(height: 20),
            // 자식3
            Expanded(
                child: Image.asset(
              'assets/cloth.jpeg',
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }
} // end of StorePage
