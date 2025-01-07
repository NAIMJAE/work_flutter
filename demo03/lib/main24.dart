// 2) 고리 소리가 나는 클래스 추가
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

class Fish {
  void hungry() {
    print('뻐끔 배고파');
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  dog.performAction();
  cat.performAction();

  Fish fish = Fish();
  // fish.performAction(); 만약 동적인 코드였다면 오류 발생
}
