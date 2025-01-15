import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Align(
        // Align
        // - 가로와 세로를 좌표 형태로 지정해 정렬하는 위젯
        // - (-1.0 ~ 1.0) 사이의 값으로 표현, 기준은 부모 위젯
        alignment: const Alignment(-0.6, 0),
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
        Text(
          '혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여정에서 좋은 공간전체 숙소까지, 모두의 숙소에 다 있습니다.',
          style: subtitle1(),
        ),
      ],
    );
  }

  Widget _buildFormField() {
    // common_form_field 호출
    return Column(
      children: [
        CommonFormField(prefixText: '위치', hintText: '근처 추천 장소'),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(kAccentColor),
      ),
      onPressed: () {},
      child: Text('data'),
    );
  }
}
