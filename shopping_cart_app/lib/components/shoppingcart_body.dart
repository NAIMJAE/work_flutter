import 'package:flutter/material.dart';
import 'package:shopping_cart_app/constants.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          _buildBodyNameAndPrice(),
          const SizedBox(height: 12),
          _buildBodyRatingAndReviewCount(),
          const SizedBox(height: 12),
          _buildBodyColorOptions(),
          const SizedBox(height: 12),
          _buildBodyButton(),
        ],
      ),
    );
  }

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Title',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '\$222',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  // 2. 별점과 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 동적 List를 생성하기 위한 구문
        // List.generate(반복 횟수, (index) => 본문).toList
        // ※ 스프레드연산자(...)와 함께 사용
        // ※ children의 [] 대신 List.generate문을 사용도 가능
        Row(
          children: [
            ...List.generate(
                5, (index) => Icon(Icons.star, color: Colors.amber))
          ],
        ),
        Row(
          children: [
            Text('review'),
            Text('(26)', style: TextStyle(color: Colors.blue)),
          ],
        )
      ],
    );
  }

  // 3-1. 색상 옵션 선택
  Widget _buildBodyColorOptions() {
    List<Color> colorOptionList = [
      Colors.black,
      Colors.green,
      Colors.orange,
      Colors.grey,
      Colors.white,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Color Options',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: List.generate(colorOptionList.length,
              (idx) => _buildColorOption(colorOptionList[idx])),
        ),
      ],
    );
  }

  // 3-2. 색상 옵션 위젯을 만드는 함수
  Widget _buildColorOption(eachColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: eachColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
          )
        ],
      ),
    );
  }

  // 4. 버튼
  Widget _buildBodyButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 350,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: kAccentColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          'Add to Cart',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
