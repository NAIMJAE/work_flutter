class Animal {
  // final 키워드를 이용해 변수 생성
  final String name;

  Animal(this.name) {}
}

class Dog extends Animal {
  // 이니셜라이저와 super 키워드 사용
  Dog(String name) : super(name) {}

  void bark() {
    print('멍멍');
  }
}

void main() {
  Dog dog1 = Dog('흰둥이');
  print('dog1 name : ${dog1.name}');
  dog1.bark();

  Dog dog2 = Dog('바둑이');
  print('dog2 name : ${dog2.name}');
  dog2.bark();
}
