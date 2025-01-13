import 'package:flutter/material.dart';

class TLoginPage extends StatelessWidget {
  // 1. GlobalKey 선언 - 폼 상태를 관리하기 위한 Key
  final _formKey = GlobalKey<FormState>();

  // 2. 사용자가 입력한 데이터를 저장하는 멤버 변수 선언
  String _email = '';
  String _password = '';

  TLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('로그인 페이지', style: TextStyle(fontSize: 30)),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('email'),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email을 입력하세요.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value ?? '';
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('password'),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password를 입력하세요.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _password = value ?? '';
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // 유효성 검사를 다 통과하면 아래 로직 호출
                        print('Email : ${_email}');
                        print('Password : ${_password}');

                        // 미리 정해진 라우터 이름을 호출할 수 있따.
                        Navigator.pushNamed(context, '/home');
                      }
                    },
                    child: Text('LOGIN', style: TextStyle(color: Colors.black)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
