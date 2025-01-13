import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 이벤트가 일어나면 다시 화면을 그려야 함
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 현재 시간 상태를 저장하는 변수
  String timeOfDay = '낮';

  @override
  Widget build(BuildContext context) {
    print('MyApp(전체) build()');
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.blue,
            child: Column(
              // 좌우 공간 가득 차지
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 텍스트
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      print('CLICK!');

                      timeOfDay = (timeOfDay == '낮' ? '밤' : '낮');

                      // 화면을 새롭게 갱신하라 명령
                      setState(() {
                        print('setState 화면을 다시 그림 --> 부모의 build() 재호출');
                      });

                      print('현재 상태 : ${timeOfDay}');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: (timeOfDay == '낮') ? Colors.green : Colors.red,
                      child: Text(
                        timeOfDay,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                // 이미지
                Expanded(
                  flex: 1,
                  child: FlutterLogo(
                    size: 300,
                    style: FlutterLogoStyle.markOnly,
                    textColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
