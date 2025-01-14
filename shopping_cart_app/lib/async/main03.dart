import 'package:flutter/material.dart';
// 콜백 함수

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentsView(),
    );
  }
}

// 부모 클래스
class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
}

class _ParentsViewState extends State<ParentsView> {
  String displayText = '부모 위젯 변수';

  // 메서드 선언
  void handleChildEvent(String message) {
    setState(() {
      displayText = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(child: Text(displayText)),
            ),
            Expanded(
              flex: 1,
              child: ChildA(onCallbackReceived: handleChildEvent),
            ),
            Expanded(
              flex: 1,
              child: ChildB(onCallBackReceived: handleChildEvent),
            ),
          ],
        ),
      ),
    );
  }
}

// 자식 클래스 A
class ChildA extends StatelessWidget {
  final Function(String message) onCallbackReceived;

  const ChildA({required this.onCallbackReceived, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('CHILD A에 이벤트 발생');
          onCallbackReceived('A가 연산한 데이터 전달');
        },
        child: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Center(child: Text('CHILD A')),
        ),
      ),
    );
  }
}

// 자식 클래스 B
class ChildB extends StatelessWidget {
  final Function onCallBackReceived;

  const ChildB({required this.onCallBackReceived, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('CHILD B에 이벤트 발생');
          onCallBackReceived('B가 연산한 데이터 전달');
        },
        child: Container(
          width: double.infinity,
          color: Colors.red,
          child: Center(child: Text('CHILD B')),
        ),
      ),
    );
  }
}
