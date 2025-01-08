import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            // AssetImage는 보통 위젯의 배경으로 동작할 때 활용하는 위젯
            backgroundImage: AssetImage('assets/images/ch1.jpg'),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Park ImJae',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            Text('프로그래머/작가/강사',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Text('데어 프로그래밍', style: TextStyle(fontSize: 14)),
          ],
        ),
      ],
    );
  }
}
