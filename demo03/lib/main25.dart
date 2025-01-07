// 3) Animal 추상클래스를 구현해서 물고리 소리가 나는 클래스 추가
abstract class Animal {
  void performAction();
}

class Dog implements Animal {
  @override
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat implements Animal {
  @override
  void performAction() {
    print('야옹 배고파');
  }
}

class Fish implements Animal {
  @override
  void performAction() {
    print('뻐끔 배고파');
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  dog.performAction();
  cat.performAction();

  Fish fish = Fish();
  fish.performAction();

  // 4) 동적 바인딩
  start(Dog());
  start(Cat());
  start(Fish());
}

//
void start(Animal name) {
  // performAction() 메서드가 동작하게 만들고 싶다.
  // 단, 강아지 고양이 물고기 동적으로 들어오더라도 performAction()이 호출되게 설계
  name.performAction();
}
