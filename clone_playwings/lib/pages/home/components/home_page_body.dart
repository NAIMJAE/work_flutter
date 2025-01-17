import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

import '../../../model/header_Item.dart';
import 'Homa_page_now_air_ticket.dart';
import 'Home_page_ad.dart';
import 'Home_page_info.dart';
import 'home_page_most_room.dart';
import 'home_page_popular_product.dart';
import 'home_page_recommend_product.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBodyTitle('추천 특가 상품'),
          HomePageRecommendProduct(),
          _buildBodyTitle('지금 인기있는 특가 상품은'),
          HomePagePopularProduct(),
          _buildBodyTitle('지금 떠나면 좋은 항공권 소식은 ✈'),
          HomaPageNowAirTicket(),
          HomePageAd(),
          _buildBodyTitle('떠나기 전 미리 확인하는 해외여행정보 총집합💡'),
          HomePageInfo(),
          _buildBodyTitle('지금 가장 많이 예약하는 숙소는?🥇'),
          HomePageMostRoom(),
        ],
      ),
    );
  }

  Widget _buildBodyTitle(text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(text, style: ctBodyLarge()),
    );
  }
}
