import 'package:flutter/material.dart';

import '../../model/header_Item.dart';
import '../../theme.dart';

class SpecialPriceProductCard extends StatelessWidget {
  HeaderItem item;
  double size;
  String cate;

  SpecialPriceProductCard(
      {required this.item, required this.size, required this.cate, super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: item.cate == cate || cate == '전체',
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              width: size,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item.imageName),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.company, style: ctBodyMedium(mColor: Colors.white)),
                  const SizedBox(height: 8),
                  Text(item.contents,
                      style: ctBodyMedium(mColor: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(item.company, style: ctBodySmallBold()),
            Text(item.contents, style: ctBodyMedium()),
            _buildHashTag(),
            Text(item.price, style: ctBodySmall(mColor: Colors.red)),
          ],
        ),
      ),
    );
    ;
  }

  Widget _buildHashTag() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey)),
            child: Text('#아시아나항공', style: ctBodyXSmall(mColor: Colors.grey)),
          )
        ],
      ),
    );
  }
}
