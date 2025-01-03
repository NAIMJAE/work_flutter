void main() {
  // 02. DART 타입 확인 (runtimeType)
  // Dart에서는 runtimeType을 활용해 변수의 타입을 확인할 수 있습니다.
  // 프로그램 작동 중 예상치 못한 타입의 값이 들어올 경우 제대로 동작하지 않을 수 있습니다.
  // runtimeType을 통해 디버깅 및 오류 방지를 할 수 있습니다.

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
