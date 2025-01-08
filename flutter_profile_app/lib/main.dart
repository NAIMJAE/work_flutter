import 'package:flutter/material.dart';
import 'package:flutter_profile_app/profile_header.dart';
import 'package:flutter_profile_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 객체를 const로 사용하려면 생성자가 const 생성자이여야 한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

// 페이지 단위의 위젯 만들기
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        endDrawer: Container(
          width: 200,
          //height: double.infinity,
          color: Colors.blue,
        ),
        body: Column(
          children: [
            // 공백 20
            const SizedBox(height: 20),

            // 프로필 헤더
            ProfileHeader(),

            // 공백 20
            const SizedBox(height: 20),

            // 프로필 카운트 정보

            // 공백 20
            const SizedBox(height: 20),

            // 프로필 버튼 2개

            // 탭바 영역

            //
          ],
        ),
      ),
    );
  }
}
