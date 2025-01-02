// [Flutter] Dart 언어 기본 문법 #01 - 변수와 연산자
void main() {
  // Ⅰ DART 변수
  // 01. DART 데이터 타입
  // 데이터 타입이란 메모리 공간에 들어간 값의 형태를 뜻합니다.
  // Dart 언어는 Java와 달리 원시 타입이 없고 모두 참조 타입을 사용합니다.
  int n1 = 10;
  double d1 = 10.0;
  bool b1 = true;
  String s1 = '홍길동'; // 홑따옴표 권장 사항

  // 02. DART 타입 확인 (runtimeType)
  // Dart에서는 runtimeType을 활용해 변수의 타입을 확인할 수 있습니다.
  // 프로그램 작동 중 예상치 못한 타입의 값이 들어올 경우 제대로 동작하지 않을 수 있습니다.
  // runtimeType을 통해 디버깅 및 오류 방지를 할 수 있습니다.
  print('n1 : ${n1.runtimeType}');
  print('d1 : ${d1.runtimeType}');
  print('b1 : ${b1.runtimeType}');
  print('s1 : ${s1.runtimeType}');

  // 03. DART 타입 추론
  // 타입 추론이란?
  // 개발자가 변수의 타입을 명시하지 않아도, 자동으로 적절한 타입을 결정해주는 기능입니다.
  // Dart 언어는 타입 추론을 지원하며, 값이 들어올 때 타입을 추론하여 변수를 초기화합니다.
  // Dart 언어에서는 타입 추론을 위해 var, dynamic 두 가지 키워드를 제공합니다.

  // var
  // - var 키워드는 런타임 시점에 동작하며, 변수에 값이 들어갈 때 알맞은 타입을 추론합니다.
  // - var 키워드로 한 번 초기화된 데이터 타입은 다른 데이터 타입으로 변경이 불가능합니다.
  var n2 = 10;
  var d2 = 10.1;
  var b2 = true;
  var s2 = '홍길동';

  print('n2 : ${n2.runtimeType}');
  print('d2 : ${d2.runtimeType}');
  print('b2 : ${b2.runtimeType}');
  print('s2 : ${s2.runtimeType}');

  // n2 = 20.1; -> X(오류 발생)

  // dynamic
  // -
  // - dynamic 키워드는 모든 타입을 받을 수 있고, 한 번 초기화된 데이터를 다른 타입으로 변경 가능합니다.

  dynamic dyN1 = 100;
  dynamic dyD1 = 10.2;
  dynamic dyB1 = true;
  dynamic dyS1 = '홍길동';
  dyN1 = 20.5;
  dyD1 = false;
  dyB1 = '이순신';
  dyS1 = 200;

  print('dyN1 : ${dyN1.runtimeType}');
  print('dyD1 : ${dyD1.runtimeType}');
  print('dyB1 : ${dyB1.runtimeType}');
  print('dyS1 : ${dyS1.runtimeType}');

  // 추가 설명 필요

  // 04. 상수
  // 상수란 한 번 할당된 값이 변경되지 않는 변수입니다.
  // dart 에서는 상수를 정의하기 위해 final 키워드와 const 키워드를 제공합니다.

  // final
  // - 상수를 선언하기 위해 사용 (값을 변경 할 수 없음)
  // - 런타임 상수(Run-time Constant)
  // - 프로그램이 실행되는 도중에 값이 결정, 이후에는 변경 불가능

  // const
  // - 상수를 선언하기 위해 사용 (값을 변경 할 수 없음)
  // - 컴파일 상수 (Compile-time Constant)
  // - 코드가 컴파일 될 때 값이 결정

  final int n3 = 10;
  // n3 = 100; 컴파일 시점에 오류 발생

  const double d3 = 101.1;
  // d3 = 20.1; 변경 불가능

  // 상수 사용시 데이터 타입도 역시 생략 가능
  final a3 = 100;
  const b3 = true;

  // Ⅱ Dart 연산자
  // 01. 산술 연산자
  // 더하기
  print('3 + 2 = ${3 + 2}'); // 더하기

  // 빼기
  print('3 - 2 = ${3 - 2}'); // 빼기

  // 곱하기
  print('3 * 2 = ${3 * 2}'); // 곱하기

  // 나누기
  print('3 / 2 = ${3 / 2}'); // 나누기

  // 나머지
  print('3 % 2 = ${3 % 2}'); // 나머지

  // 몫
  print('5 ~/ 2 = ${5 ~/ 2}'); // 몫

  // 02. 비교 연산자
  // 같다
  print('2 == 3 -> ${2 == 3}'); // false

  // 다르다
  print('2 != 3 -> ${2 != 3}'); // true

  // 왼쪽 값이 오른쪽 값보다 작다
  print('2 < 3 -> ${2 < 3}'); // true

  // 왼쪽 값이 오른쪽 값보다 크다
  print('2 > 3 -> ${2 > 3}'); // false

  // 왼쪽 값이 오른쪽 값보다 작거나 같다
  print('2 <= 3 -> ${2 <= 3}'); // true

  // 왼쪽 값이 오른쪽 값보다 크거나 같다
  print('2 >= 3 -> ${2 >= 3}'); // false

  // 03. 논리 연산자
  bool isRainy = true;
  bool hasUmbrella = false;

  // AND
  print(isRainy && hasUmbrella); // false
  print(hasUmbrella && isRainy); // false

  // OR
  print(hasUmbrella || isRainy); // true
  print(isRainy || hasUmbrella); // true

  // NOT
  print(!isRainy); // false
  print(!hasUmbrella); // true
}
