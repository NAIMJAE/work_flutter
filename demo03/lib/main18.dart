// Ⅱ super 키워드
// 01. super
// super 키워드란 상속관계에서 자식 클래스가 부모 클래스의 생성자나 메서드, 필드에 접근할때 사용하는 키워드
// 주로 상속 상황에서 부모 클래스의 생성자를 호출하거나, 부모 클래스의 메서드를 재사용할 때 사용
//
// super. - 부모 클래스의 변수에 접근
// super() - 부모 클래스의 생성자 호출

// 02. super 예제
// 부모 클래스의 생성자에 매개변수가 없는 경우
// 부모 클래스
class Burger {
  String? name;
  Burger() {
    print('버거 생성자 호출');
  }
}

// 자식 클래스
class CheeseBurger extends Burger {
  CheeseBurger(String name) {
    // this.name = name;
    super.name = name;
    print('치즈 버거 생성자 호출');
  }
}

void main() {
  CheeseBurger cb = CheeseBurger('불고기 치즈 버거');
  print('Burger name : ${cb.name}');
}
