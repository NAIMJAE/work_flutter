import 'package:flutter/cupertino.dart';

import 'home/home_page.dart';
import 'chatting/chatting_page.dart';
import 'my_carrot/my_carrot_page.dart';
import 'near_me/near_me_page.dart';
import 'neighborhood_life/neighborhood_life_page.dart';
import 'package:flutter/material.dart';

// Bottom Navigation을 가진 위젯
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 현재 선택된 탭의 인덱스를 저장하는 변수

  // 상태는 행위를 통해 변경
  void changeStackPages(int index) {
    setState(() {
      _selectedIndex = index; // 탭 변경시 상태 업데이트 build() 재호출
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // index를 활용할 수 있는 stack 위젯
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            NeighborhoodLifePage(),
            NearMePage(),
            ChattingPage(),
            MyCarrotPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed, // 동일한 크기의 탭을 만들어 줌
          currentIndex: _selectedIndex, // 현재 선택된 탭 index를 명시
          onTap: (index) {
            changeStackPages(index);
          },
          items: [
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              label: '동네생활',
              icon: Icon(CupertinoIcons.square_on_square),
            ),
            BottomNavigationBarItem(
              label: '내 근처',
              icon: Icon(CupertinoIcons.placemark),
            ),
            BottomNavigationBarItem(
              label: '채팅',
              icon: Icon(CupertinoIcons.chat_bubble_2),
            ),
            BottomNavigationBarItem(
              label: '나의 당근',
              icon: Icon(CupertinoIcons.person),
            ),
          ],
        ),
      ),
    );
  }
}
