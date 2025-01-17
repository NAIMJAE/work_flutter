import 'package:flutter/material.dart';

import '../../../model/header_Item.dart';
import '../../component/special_price_product_card.dart';

class HomePageRecommendProduct extends StatelessWidget {
  const HomePageRecommendProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SpecialPriceProductCard(
              item: headerItem[index], size: 320, cate: '전체');
        },
        itemCount: headerItem.length,
      ),
    );
  }
}
