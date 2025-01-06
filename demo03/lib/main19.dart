// 03. 이니셜라이즈 키워드 ( : )
// 부모 클래스의 생성자에 매개변수가 있는 경우 자식 클래스의 생성자에서 전달해야 한다.
// 자식 클래스에서 부모 클래스의 생성자로 값을 전달하기 위해 이니셜라이즈 키워드와 super 키워드 사용

// 부모 클래스
class Burger {
  String? name;
  Burger(String? name) {
    this.name = name;
    print('버거 생성자 호출');
  }
}

// 자식 클래스
class CheeseBurger extends Burger {
  // 이니셜라이즈와 super 키워드 사용
  CheeseBurger(String? name) : super(name) {
    print('치즈 버거 생성자 호출');
  }
}

void main() {
  CheeseBurger cb = CheeseBurger('불고기 치즈 버거');
  print('CheeseBurger name : ${cb.name}');
}
