import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Flutter는 화면의 크기가 변할때 위젯들을 새로 랜더링 하므루 Stateless지만 정렬이 변함 (ex.가로모드 전환)
    // MediaQuery를 이용해 현재 화면의 너비 반환
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Align(
        // Align
        // - 가로와 세로를 좌표 형태로 지정해 정렬하는 위젯
        // - (-1.0 ~ 1.0) 사이의 값으로 표현, 기준은 부모 위젯
        alignment: screenWidth < 520
            ? const Alignment(0, 0)
            : const Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text('모두의 숙소에서 숙소를 검색하세요.', style: h4()),
        const SizedBox(height: gap_xs),
        Text(
          '혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여정에서 좋은 공간전체 숙소까지, 모두의 숙소에 다 있습니다.',
          style: body1(),
        ),
        const SizedBox(height: gap_xs),
      ],
    );
  }

  Widget _buildFormField() {
    // common_form_field 호출
    return Column(
      children: [
        CommonFormField(prefixText: '위치', hintText: '근처 추천 장소'),
        const SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(prefixText: '체크인', hintText: '날짜 입력')),
            const SizedBox(width: gap_s),
            Expanded(
                child: CommonFormField(prefixText: '체크아웃', hintText: '날짜 입력')),
          ],
        ),
        const SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: '성인', hintText: '1')),
            const SizedBox(width: gap_s),
            Expanded(child: CommonFormField(prefixText: '어린이', hintText: '0')),
          ],
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => print('검색 버튼 클릭!'),
        child: Text('검색', style: subtitle1(mColor: Colors.white)),
      ),
    );
  }
}
