// [Flutter] Dart 언어 기본 문법 #04 - Null Safety
// Ⅰ Null Safety
// 01. Null Safety란?
// Null Safety
// Null Safety는 개발자가 Null 에러를 피할 수 있도록 도와주는 다트 프로그래밍 언어의 기능
// 이 기능은 Sound Null Safety in dart 라고 불리며, 이를 통해 개발자는 코드 작성 시점에 Null 에러를 예측 가능
// Sound Null Safety in dart란 런타임 중 Null 포인터 예외를 방지하기 위해 Dart 컴파일러가 코드를 분석하고 컴파일할 때 타입 시스템에서 엄격한 규칙을 적용하는 것을 의미

// Null Safety 사용
// Dart 언어는 기본적으로 데이터 타입이 Null 값을 가질 수 없음
// Dart 언어에서 Null 값을 허용하기 위해 ( ? )를 사용
// Null Safety를 통해 컴파일 시점에 오류를 미리 확인 가능

void main() {
  String name = '길동';
  int age = 30;

  // String Optional 데이터 타입
  String? nullAbleName;
  int? nullAbleAge;

  print('name : ${name}');
  print('age : ${age}');
  print('nullAbleName : ${nullAbleName}');
  print('nullAbleAge : ${nullAbleAge}');

  // Null Safety 기능이 없는 Java에서는 방어적 코드를 활용
  if (nullAbleName != null) {
    print('nullAbleName Length : ${nullAbleName.length}');
  }
}
