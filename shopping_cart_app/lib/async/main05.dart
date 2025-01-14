// Future 타입을 동기적 방식으로 소화

void main() {
  print('main 함수 시작');
  addNumber(10, 20);
  print('main 함수 끝');
}

Future<void> addNumber(int n1, int n2) async {
  print('addNumber 함수 시작');

  var result = 0;
  await Future.delayed(Duration(seconds: 3), () {
    result = n1 + n2;
  });

  print('addNumber 연산 완료 : ${result}');
}
