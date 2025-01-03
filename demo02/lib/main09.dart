// Ⅱ 화살표 함수
// 01. 화살표 함수 구조
// Dart에서 화살표 함수는 함수를 간결하게 정의하고 사용할 수 있는 특별한 문법
// 다른 프로그래밍 언어에서는 람다 함수 또는 람다 표현식이라 부릅니다.
// 기존 함수 정의와 비교하면 화살표 함수는 간단한 함수를 더 간단하게 표현하는 표현식
void main() {
  // 일반 함수
  int ex3(int a, int b) {
    return a * b;
  }

  // 화살표 함수
  int ex4(int a, int b) => a * b;

  // 함수의 선언부와 구현부 중에서 구현부를 간결하게 표현
  // 매번 반복되는 중괄호와 return 키워드를 생략하고 화살표로 대체

  // Dart의 화살표 함수는 구현부에 단일 표현식만 사용할 수 있습니다.
  // 여러 줄로 구성된 복잡한 로직의 함수를 구현하기 위해서는 일반 함수 표현식을 사용해야 합니다.

  // 02. 화살표 함수 예제??
  // 사칙 연산
  int add2(int n1, int n2) => n1 + n2;
  int sub(int n1, int n2) => n1 - n2;
  int mul(n1, n2) => n1 * n2;
  int div(n1, n2) => n1 / n2;

  // if 문
  int example(int n1, int n2) {
    if ((n1 + n2) > 5) {
      return n1 - n2;
    } else {
      return n1 * n2;
    }
  }

  int example2(int n1, int n2) => (n1 + n2) > 5 ? n1 - n2 : n1 * n2;

  // 화살표 함수를 변수에 할당
  Function(int, int) ex5 = (int n1, int n2) => n1 + n2;
  var ex6 = (n1, n2) => n1 + n2;
}
