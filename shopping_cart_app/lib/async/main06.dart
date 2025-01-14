// Future 타입을 동기적 방식으로 소화
// main05는 async / await 사용 방법
// main06은 then
// 비동기 방식에서 콜백으로 이벤트 핸들러 처리를 한다.

void main() {
  print('main 함수 시작');

  addNumber2(10, 5).then((value) => print('결과값 출력 : ${value}'));

  print('main 함수 종료');
}

Future<int> addNumber2(int n1, int n2) {
  print('addNumber 함수 시작');
  return Future.delayed(Duration(seconds: 3), () => n1 + n2);
}
