import 'package:flutter/material.dart';
import 'package:flutter_profile_app/components/profile_button.dart';
import 'package:flutter_profile_app/components/profile_count_info.dart';
import 'package:flutter_profile_app/components/profile_header.dart';
import 'package:flutter_profile_app/components/profile_tabView.dart';

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
            const SizedBox(height: 20),
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            ProfileButtons(),
            Expanded(child: ProfileTab()),
          ],
        ),
      ),
    );
  }
}
