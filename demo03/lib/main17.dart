// [Flutter] Dart 언어 기본 문법 #05 - 상속과 super 키워드
// Ⅰ 상속
// 01. 상속
// 상속이란?
// 상속이란 부모 클래스의 속성과 메서드를 자식 클래스가 물려받는 것을 의미
// 상속을 통해 단순히 부모 클래스의 속성과 메서드를 물려받는 것이 아니라 동시에 다형성도 성립해야 함
// 다형성이란 하나의 객체가 여러 형태를 가질 수 있는 성질을 의미
// 상속을 통해 코드의 재사용성과 유지보수성이 높아짐
//
// 02. 상속 예제
class Burger {
  String? b_name;
  // 생성자
  Burger() {
    print('나는 버거');
  }
}

class CheeseBurger extends Burger {
  String? ch_name;
  CheeseBurger() {
    print('치즈 버거');
  }
}

void main() {
  CheeseBurger cb = CheeseBurger();
  cb.b_name; // 부모 클래스를 물려받았기 때문
  cb.ch_name;

  // 치즈 버거는 다형성을 가진다. 버거이기도 하며 치즈 버거이기도 하다.
  //
  print('-------------------');
  Burger b2 = CheeseBurger(); // 업 캐스팅
  b2.b_name;
  // b2.ch_name; 데이터 타입이 CheeseBurger가 아니기 때문
  (b2 as CheeseBurger).ch_name; // 다운 캐스팅
}
