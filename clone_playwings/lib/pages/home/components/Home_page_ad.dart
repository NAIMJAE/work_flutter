import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class HomePageAd extends StatelessWidget {
  const HomePageAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Container(
        height: 110,
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('7/7 G마켓 라이브 방송 특가',
                    style: ctBodySmallBold(mColor: Colors.black)),
                Text('괌 5성급 프리미엄 자유 여행',
                    style: ctBodyMedium(mColor: Colors.black)),
                Text('혜택가 69만원대부터 +방송 중 혜택 렌터카 제공',
                    style: ctBodyXSmall(mColor: Colors.black)),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset('assets/images/clone3.jpg',
                  fit: BoxFit.cover, width: 140, height: 90),
            ),
          ],
        ),
      ),
    );
  }
}
