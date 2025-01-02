// 코드의 시작점
void main() {
  // 타입 확인 - runtimeType 의 활용
  // 디버깅 및 오류 방지
  // 예상치 못한 타입의 값이 들어올 경우, 프로그램이 제대로 동작하지 않을 수 있다.
  // runtimeType 을 활용해서 타입 체크를 할 수 있다.

  int n1 = 10;
  double d1 = 10.0;
  bool b1 = true;
  String s1 = '홍길동';

  print('정수 : ${n1.runtimeType}');
  print('실수 : ${d1.runtimeType}');
  print('부울 : ${b1.runtimeType}');
  print('문자열 : ${s1.runtimeType}');

  // Dart에서는 기본 데이터 타입도 객체
  // Dart는 엄격한 데이터 타입과 타입 추론도 제공
}
