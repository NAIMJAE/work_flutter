import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

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
              _buildPopularItemStar(5),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset('assets/images/p1.jpeg', fit: BoxFit.cover),
    );
  }

  Widget _buildPopularItemStar(count) {
    return Column(
      children: [
        Row(
          children: [
            ...List.generate(
                count, (index) => Icon(Icons.star, color: kAccentColor))
          ],
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          '깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋㅋㅋㅋ화장실도 3개에요!!! 5명이서 씻는 것도 전혀 불편함없이 좋았어요~ 이불도 포근하고 좋습니다.ㅎㅎ',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/p1.jpeg'),
        ),
        const SizedBox(width: gap_s),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('홍길동', style: subtitle1()),
            Text('한국'),
          ],
        )
      ],
    );
  }
}
