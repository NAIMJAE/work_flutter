# [Flutter] Dart 언어 기본 문법 #04 - Null Safety
## Ⅰ Null Safety
### 01. Null Safety란?
- Null Safety는 개발자가 Null 에러를 피할 수 있도록 도와주는 다트 프로그래밍 언어의 기능
- 이 기능은 Sound Null Safety in dart 라고 불리며, 이를 통해 개발자는 코드 작성 시점에 Null 에러를 잡을 수 있습니다.

- Dart 언어는 기본적으로 데이터 타입이 Null 값을 가질 수 없습니다.
- Dart 언어에서 Null 값을 허용하기 위해 nullable type marker ( ? )을 사용합니다.
- Null Safety를 통해 컴파일 시점에 오류를 미리 확인할 수 있습니다.

### 02. Null 체크 연산자 ( ?. ) 와 Null 병합 연산자 ( ?? )
- Null 체크 연산자 ( ?. )
- 값이 Null일 수 있는 객체의 속성이나 메서드에 안전하게 접근하기 위해 사용
- Null 체크 연산자를 통해 Null 참조 오류를 방지하고 코드를 견고하게 작성 가능

- Null 병합 연산자 ( ?? )
- Null 값 처리를 위해 사용하는 연산자
- 변수나 표현식의 값이 Null인 경우 대체 값을 지정 가능
- Null 병합 연산자를 통해 코드를 더 간결하고 안전하게 작성 가능

### 03. Null 억제 연산자 ( ! )
- 개발자가 해당 값이 Null이 아님을 확신하고 예외를 발생시키지 않을 때 사용

### 04. late 키워드
- late 키워드는 지연 초기화를 의미
- late 키워드를 사용하면 변수를 선언만 해두고, 나중에 필요할 때 초기화할 수 있습니다.

# [Flutter] Dart 언어 기본 문법 #05 - 상속과 super 키워드
## Ⅰ 상속
### 01. 상속

- bottom-up 방법?? 다형성이 나타나게