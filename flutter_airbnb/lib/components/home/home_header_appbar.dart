import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.heart, color: Colors.red, size: 20),
              const SizedBox(width: 4),
              Text(
                'RoomOfAll',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('회원가입', style: TextStyle(color: Colors.white, fontSize: 12)),
              const SizedBox(width: 10),
              Text('로그인', style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}
