// 03. Null 억제 연산자 ( ! )
// Null 억제 연산자
// 'Null 억제 연산자' 또는 'Null Assert 연산자' 라고 불림
// Nullable 변수나 표현식을 사용할 때, 해당 값이 Null이 아님을 명시적으로 나타내는데 사용
// 개발자가 해당 값이 Null이 아님을 확신하고 예외를 발생시키지 않을 때 사용
// 하지만 만약 해당 값이 Null인 경우, 런타임 예외가 발생할 수 있으므로 주의

// Null 억제 연산자 예제
void main() {
  String? nullAbleName = getNullableName();

  // Null 억제 연산자 사용
  String forcedName = nullAbleName!;

  print('forcedName : ${forcedName}');
  // Dart 언어에서 기본 타입에 Optional 타입을 넣기 위해 'Null 체크 연산자' 또는 'Null 병합 연산자'를 사용 할 수 있지만
  // 해당 값이 Null이 아님을 확신한다면 Null 억제 연산자를 사용할 수 있다.
}

String? getNullableName() {
  return '홍길동';
}
