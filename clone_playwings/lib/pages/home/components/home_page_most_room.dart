import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class HomePageMostRoom extends StatelessWidget {
  const HomePageMostRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildMostRoomBox(),
          _buildMostRoomBox(),
          _buildMostRoomBox(),
        ],
      ),
    );
  }

  Widget _buildMostRoomBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/clone2.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('화성시', style: ctBodySmallBold(mColor: Colors.white)),
                  Text('롤링 힐스 호텔', style: ctBodyLarge(mColor: Colors.white)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('2022. 7. 12 ~ 2022. 7. 13'),
          Text('1박 171,039원', style: ctBodySmall(mColor: Colors.red)),
        ],
      ),
    );
  }
}
