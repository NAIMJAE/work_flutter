import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 통신을 담당하는 클라이언트 측 객체를 가져오자
  Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
    // 객체 실행시 한 번 호출 되는 메서드
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  // 통신을 담당하는 메서드를 만들기
  _fetchTodos() async {
    // https://jsonplaceholder.typicode.com/todos/1
    // 통신을 담당하는 코드는 기본적으로 예외처리부터 시작
    try {
      Response response =
          await _dio.get('https://jsonplaceholder.typicode.com/todos/1');

      print('HTTP status code : ${response.statusCode}');
      print('HTTP data : ${response.data}');
      print('HTTP data runtimeType : ${response.data.runtimeType}');
      // JSON으로 통신했지만 어떤 타입?
      // Map 타입
      print('------------------------------');
      print('데이터의 userId 확인 : ${response.data['userId']}');
      print('데이터의 id 확인 : ${response.data['id']}');
      print('데이터의 title 확인 : ${response.data['title']}');
      print('데이터의 completed 확인 : ${response.data['completed']}');
      print('------------------------------');

      // Map 타입으로 들어온 데이터를 Todo 객체를 생성해서 상태값을 담아보시오
      Todo todo = Todo(
          userId: response.data['userId'],
          id: response.data['id'],
          title: response.data['title'],
          completed: response.data['completed']);

      print(todo);
    } catch (e) {
      print('런타임 예외 발생');
      print(e.toString());
    }
  }
}

// dart는 기본적으로 null을 허용하지 않는데, 통신 과정에서 서버에서 null을 보낼 수도 있음
class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
