import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    // getBodyWidth(context) : 화면 너비의 70% 크기 반환 함수 호출
    // 한 줄에 3개씩 표시 & 여백을 위한 -5
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        // constraints : 컨테이너의 너비와 높이에 제한 조건을 설정하는 속성
        constraints: BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStart(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Image.asset('assets/images/p1.jpeg');
  }

  Widget _buildPopularItemStart() {
    return Container();
  }

  Widget _buildPopularItemComment() {
    return Container();
  }

  Widget _buildPopularItemUserInfo() {
    return Container();
  }
}
