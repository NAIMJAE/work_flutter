void main() {
  // 04. 상호작용
  // 객체 지향 프로그래밍에서 객체들이 서로 상호작용하여 원하는 동작을 수행하는 것
  Dog d1 = Dog();
  Water w1 = Water();

  print('목마름 지수 : ${d1.thirsty}');
  print('남은 물 : ${w1.liter}');

  d1.drinkWater(w1);

  print('목마름 지수 : ${d1.thirsty}');
  print('남은 물 : ${w1.liter}');
}

class Dog {
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater(Water water) {
    thirsty -= 10;
    water.drink();
  }
}

class Water {
  double liter = 2000; // 물 2000ml

  void drink() {
    liter -= 10;
  }
}
