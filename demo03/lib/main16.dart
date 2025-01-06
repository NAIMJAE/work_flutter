// 04. late 키워드
// late 키워드
// late 키워드는 지연 초기화를 의미하며, 일반적으로 non-nullable 변수를 나타내는 late 변수를 정의할 때 사용
// late로 선언된 변수는 초기화를 미루고, 변수가 실제로 사용되기 전에 초기화 됨

// 변수를 정의할 때 초기화할 수 있는 시점이나 방법이 없는 경우 사용
// 변수를 생성자나 함수에서 나중에 초기화해야하는 경우 사용
// 변수를 사용하기 전에 Null 여부를 확인하거나 예외 처리를 할 필요가 없는 경우 사용

// late 키워드 예제
void main() {
  late String greeting; // String Optional 타입이 아님에도 초기화 하지 않았지만 에러 X

  greeting = getGreetingMessage();

  print('greeting : ${greeting}');

  // late final 변수
  late final int number;
  number = 100;
  print('number : ${number}');

  // 컴파일 시점에 사용시 오류 확인
  late String notAssigned;
  // print('notAssigned : ${notAssigned}');
}

String getGreetingMessage() {
  print('함수 호출');
  return 'Hello Dart!';
}
