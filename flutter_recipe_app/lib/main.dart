import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'recipe_list_item.dart';
import 'recipe_menu.dart';
import 'recipe_title.dart';

// Flutter 코드의 시작점
void main() {
  // MyApp 위젯을 루트 위젯으로 만들어주는 함수 (위젯 트리)
  runApp(MyApp());
}

// 위젯을 만들 때 크게 2가지로 구분한다. (메모리 효율성을 위해)
// StatelessWidget - 상태 변경이 없는 위젯을 화면에 그릴때 사용 (정적 위젯)

// 상속 문법 사용
// MyApp -> 머터리얼 앱 객체를 활용
class MyApp extends StatelessWidget {
  // 생성자 - 선택적 명명 매개변수
  MyApp({super.key});

  // 보통 루트 위젯을 시작할 때 MaterialApp()을 많이 활용
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      // 앱이 실행 되었을 때 첫 페이지를 지정
      home: RecipePage(),
    );
  }
}

// Page에서는 Page라고 명명하는 클래스는 Scaffold()를 활용
class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조를 잡아주는 위젯
    // app - body - bottom 영역으로
    return Scaffold(
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            // title
            RecipeTitle(),
            // menu
            RecipeMenu(),
            // recipe item1
            RecipeListItem('coffee', 'Made Coffee'),
            RecipeListItem('burger', 'Made Burger'),
            RecipeListItem('pizza', 'Made Pizza'),
            // recipe item2
            // recipe item3
          ],
        ),
      ),
    );
  }

  // 메서드 생성 (_private 메서드)
  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black),
        SizedBox(width: 15),
        Icon(CupertinoIcons.heart, color: Colors.red),
        SizedBox(width: 15)
      ],
    );
  }
}

// StatefulWidget - 동적 위젯
