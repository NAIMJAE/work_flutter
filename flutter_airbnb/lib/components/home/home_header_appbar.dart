import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset('assets/images/logo.png',
            width: 30, height: 30, color: kAccentColor),
        const SizedBox(width: gap_s),
        Text('RoomOfAll', style: h5(mColor: Colors.white)),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('회원가입', style: subtitle1(mColor: Colors.white)),
        const SizedBox(width: gap_m),
        Text('로그인', style: subtitle1(mColor: Colors.white)),
      ],
    );
  }
}
