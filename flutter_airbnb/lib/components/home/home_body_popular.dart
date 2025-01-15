import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Container();
  }

  Widget _buildPopularList() {
    // Wrap : 공간이 충분하지 않은 경우 남은 위젯이 교차축 방향으로 정렬됨
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
