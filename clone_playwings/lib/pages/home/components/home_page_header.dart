import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/clone1.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 500,
        ),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.3),
          width: double.infinity,
          height: 500,
        ),
        Positioned(
          top: 40,
          left: 20,
          child: Container(
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('tway', style: ctBodyXLarge(mColor: Colors.white)),
                const SizedBox(height: 8),
                Text('제주 항공권은 왕복 74,440원',
                    style: ctBodyXLarge(mColor: Colors.white)),
                const SizedBox(height: 8),
                Text('7~10월 출발', style: ctBodyLarge(mColor: Colors.white)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
