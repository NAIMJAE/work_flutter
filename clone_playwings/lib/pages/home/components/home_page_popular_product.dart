import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

import '../../../model/header_Item.dart';

class HomePagePopularProduct extends StatefulWidget {
  const HomePagePopularProduct({super.key});

  @override
  State<HomePagePopularProduct> createState() => _HomePagePopularProductState();
}

class _HomePagePopularProductState extends State<HomePagePopularProduct> {
  String selectedCate = '전체';
  List<String> buttonList = ['전체', '항공', '호텔', '투어'];

  void selectCateButton(select) {
    setState(() {
      selectedCate = select;
      print(select);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              ...List.generate(
                  buttonList.length,
                  (index) => _buildCateButton(
                      buttonList[index], selectCateButton, selectedCate)),
            ],
          ),
          const SizedBox(height: 16),
          ...List.generate(headerItem.length,
              (index) => _buildPopularCard(headerItem[index], selectedCate))
        ],
      ),
    );
  }

  Widget _buildCateButton(name, selectCateButton, selectedCate) {
    return InkWell(
      onTap: () {
        selectCateButton(name);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: selectedCate == name ? Colors.black54 : Colors.black12,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(name,
            style: selectedCate == name
                ? ctBodySmall(mColor: Colors.white)
                : ctBodySmall(mColor: Colors.black)),
      ),
    );
  }

  Widget _buildPopularCard(item, selectedCate) {
    return Visibility(
      visible: selectedCate == item.cate || selectedCate == '전체',
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(item.imageName), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      item.contents,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.company, style: ctBodySmallBold()),
                Text(item.contents, style: ctBodyMedium()),
                _buildHashTag(),
                Text(item.price, style: ctBodySmall(mColor: Colors.red)),
              ],
            )
          ],
        ),
      ),
    );
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
