// Ⅲ 추상 클래스
// 01. 추상 클래스
// 추상 클래스는 완전한 구현들을 제공하지 않는 클래스
// 상속을 통해 다른 클래스가 이를 확장하여 구체적인 동작을 구현하도록 강제할 수 있는 클래스
// 추상 클래스는 조금 더 일반화적인 개념을 표현하며, 공통된 속성과 메서드를 정의하는데 많이 활용
// 추상 클래스는 메서드 구현부가 없으며, 인스턴스화 시킬 수 없음

// 02. 추상 클래스 발전 과정
// 1) 동물 소리가 나는 일반 클래스 생성
class Dog {
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat {
  void performAction() {
    print('야옹 배고파');
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  dog.performAction();
  cat.performAction();
}
