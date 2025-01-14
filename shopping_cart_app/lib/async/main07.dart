// 비동기 연습

void main() {
  addNumber3(10, 5).then(
    (val) => addNumber3(val, val).then(
      (val2) => print('최종 결과 : ${val2}'),
    ),
  );
  print('main() 끝');
}

Future<int> addNumber3(int n1, int n2) {
  return Future.delayed(Duration(seconds: 3), () => n1 + n2);
}
