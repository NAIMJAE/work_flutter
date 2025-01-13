import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: FormPage(),
        ),
      ),
    );
  }
}

// 변경 가능한 변수 --> 상태가 있는 위젯
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  // 강한 소유의 관계
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _username = '';
  String _password = '';

  // Form 상태를 추적하기 위해 관리하는 고유키 하나 선언
  // 즉 이 key를 가지고 Form의 상태에 접근할 수 있다.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'username을 입력하세요';
              }
              return null;
            },
            onSaved: (value) {
              print('사용자 이름 필드 onSaved');
              _username = value!;
            },
          ),
          SizedBox(height: 24.0),
          TextFormField(
            obscureText: true, // 패스워드 입력시 사용하는 속성
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'password를 입력하세요.';
              }
              return null;
            },
            onSaved: (value) {
              print('사용자 비밀번호 필드 onSaved');
              _password = value!;
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print('true');
                _formKey.currentState!.save();
                print('아이디 : ${_username}');
                print('비밀번호 : ${_password}');
              }
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
