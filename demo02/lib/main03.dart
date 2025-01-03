void main() {
  // 03. DART 타입 추론
  // 타입 추론이란?
  // 개발자가 변수의 타입을 명시하지 않아도, 자동으로 적절한 타입을 결정해주는 기능입니다.
  // Dart 언어는 타입 추론을 지원하며, 값이 들어올 때 타입을 추론하여 변수를 초기화합니다.
  // Dart 언어에서는 타입 추론을 위해 var, dynamic 두 가지 키워드를 제공합니다.

  // var
  // - var 키워드는 런타임 시점에 동작하며, 변수에 값이 들어갈 때 알맞은 타입을 추론합니다.
  // - var 키워드로 한 번 초기화된 데이터 타입은 다른 데이터 타입으로 변경이 불가능합니다.

  var n1 = 10;
  var d1 = 10.1;
  var b1 = true;
  var s1 = '홍길동';

  print('정수 : ${n1.runtimeType}');
  print('실수 : ${d1.runtimeType}');
  print('부울 : ${b1.runtimeType}');
  print('문자열 : ${s1.runtimeType}');

  // n1 = 20.1; -> X(오류 발생)

  // dynamic
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
}
