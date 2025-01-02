// FLUTTER [DART 기본 문법 #01]
void main() {
  // 데이터란?
  // 사물이나 현상에서 얻어진 사실 또는 값을 의미

  // 변수란?
  // 값을 저장할 수 있는 메모리 공간, 즉 값을 저장해 놓고
  // 이후에 재사용 하거나 변경할 수 있도록 메모리 공간을 이름으로 할당한 개념

  // 01. DART 데이터 타입
  // 데이터 타입이란 메모리 공간에 들어간 값의 형태를 뜻합니다.
  // Dart 언어는 Java와 달리 원시 타입이 없고 모두 참조 타입을 사용합니다.
  int n1 = 10;
  double d1 = 10.0;
  bool b1 = true;
  String s1 = '홍길동'; // 홑따옴표 권장 사항

  // dart 기본 메모리 공간 3가지
  // 스택 (Stack) - 지역 변수, 매개 변수 저장 (LIFO)
  // 힙 영역 (Heap) - new / 리터럴로 선언된 값들(R value)
  // 정적 영역 (Static) - 전역 변수, 클래스의 Static 변수, 컴파일 시점 상수 등
}
