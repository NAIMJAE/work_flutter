// 02. Null 체크 연산자 ( ?. ) 와 Null 병합 연산자 ( ?? )
//
void main() {
  // Null 체크 연산자 ( ?. )
  // 값이 Null일 수 있는 객체의 속성이나 메서드에 안전하게 접근하기 위해 사용
  // Null 체크 연산자를 통해 Null 참조 오류를 방지하고 코드를 견고하게 작성 가능

  // 2 - String Optional 타입의 userName 변수 선언
  String? userName = getNullAbleUserName();

  // 3 - int Optional 타입의 userNameLength 변수 선언
  // userName이 Null인 경우 length 호출시 NullPointException이 발생
  // int? userNameLength = userName.length; 방어적 코드 필요
  if (userName != null) {
    int? userNameLength = userName.length;
  }

  // 4 - Null 체크 연산자를 통해 userNameLength 변수 초기화
  // userName이 Null이 아닌 경우에만 length 실행
  int? userNameLength = userName?.length;

  print('사용자 이름의 길이 값 : ${userNameLength}');
  print('-------------------------------------');

  // Null 병합 연산자 ( ?? )
  // Null 값 처리를 위해 사용하는 연산자
  // 변수나 표현식의 값이 Null인 경우 대체 값을 지정 가능
  // Null 병합 연산자를 통해 코드를 더 간결하고 안전하게 작성 가능

  // 1 - userName 값이 Null 이라면 ?? 뒤의 기본값 삽입
  String finalUserName = userName ?? '홍길동';

  print('finalUserName : ${finalUserName}');

  // 2 - ( .? )와 ( ?? )를 함께 사용하는 예시
  // 사용자 이름을 대문자로 변경
  String upperOrNoName = userName?.toUpperCase() ?? 'NO_NAME';
  // userName이 Null이 아닌 경우에만 toUpperCase() 실행
  // 하지만 여전히 Null일 가능성이 존재하기 때문에 Null 병합 연산자를 사용해 기본값 지정
}

// 1 - 매개변수 name이 Null이 아니면 name을 Null이면 Null을 반환하는 함수
String? getNullAbleUserName({String? name}) {
  return name;
}
