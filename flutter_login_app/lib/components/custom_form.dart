import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_text_form_field.dart';
import 'package:flutter_login_app/size.dart';

class CustomForm extends StatelessWidget {
  // 1. GlobalKey 선언 - 폼 상태를 관리하기 위한 Key
  final _formKey = GlobalKey<FormState>();

  // 2. 사용자가 입력한 데이터를 저장하는 멤버 변수 선언
  String _email = '';
  String _password = '';

  CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField('Email', (value) {
            _email = value ?? '';
          }),
          const SizedBox(height: mediumGap),
          CustomTextFormField('Password', (value) {
            _password = value ?? '';
          }),
          const SizedBox(height: largeGap),
          TextButton(
            onPressed: () {
              // 유효성 검사
              if (_formKey.currentState!.validate()) {
                // 유효성 검사를 다 통과하면 아래 로직 호출
                print('Email : ${_email}');
                print('Password : ${_password}');

                // 미리 정해진 라우터 이름을 호출할 수 있따.
                Navigator.pushNamed(context, '/home');
              }
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
/*
  ※ Form
  - 여러 입력 필드를 하나의 Form으로 묶어 관리할 수 있도록 도와주는 위젯
  - 유효성 검사, 폼 제출 처리, 입력 값 저장 및 초기화 기능을 제공
  - key : 폼 상태를 관리하기 위한 GlobalKey<FormState>
  - child : 폼 내부에 포함될 입력 필드 위젯

  ※ TextFormField
  - 사용자 텍스트 입력을 받는 위젯
  - 유효성 검사와 폼 상태 관리가 가능한 위젯
  - TextField와 비슷하지만 폼과 연동해서 사용 가능
  - decoration : 스타일 지정
  - validator :
     - 익명 함수를 받음
     - 유효성 검사 함수
  - keyboardType : 키보드 타입 지정
  - onSaved : 폼 제출 시 입력 값을 저장할 때 사용
 */
