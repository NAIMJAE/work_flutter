// 06. 선택적 명명 매개변수
// 선택적 위치 매개변수 (Optional Positional Parameters)
// - 선택적 위치 매개변수는 생성자를 호출할 때 매개변수의 위치에 따라 값을 전달
// - 전달 순서를 지켜야 하므로 가독성이 떨어질 수 있음
// - 선택적 위치 매개변수가 많을 경우, 어떤 값이 무엇을 의미하는지 혼동

// 선택적 명명 매개변수 (Optional Named Parameters)
// - 선택적 명명 매개변수는 생성자를 호출할 때 매개변수 이름을 지정하여 값을 전달
// - 호출 시 매개변수 이름을 명시적으로 지정해야 하므로 가독성이 좋음
// - 매개변수를 전달할 때 이름을 이용하기 때문에 위치가 중요하지 않음
// - required 키워드를 사용해 필수 매개변수를 지정할 수 있음

void main() {
  Dog(age: 5, name: '토토', color: '블랙', thirsty: 100);
  Cat(name: '코코', age: 5);

  var p1 = Person()
    ..setName('홍길동')
    ..addMoney(5000)
    ..money += 2000;

  print('이름 : ${p1.name}');
  print('소지금 : ${p1.money}');
}

class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // 선택적 명명 매개변수
  // {} 중괄호 안에 매개변수를 정의
  // required 키워드가 붙으면 무조건 넣어야하는 강제성이 부여된 매개변수가 됨
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}

class Cat {
  String name;
  int age;
  // ? => Optional 타입은 null 값을 허용시키는 타입
  String? color;
  int? thirsty;

  // Optional을 통해 null 값을 허용했기 때문에 기본값 지정이 가능
  Cat(
      {required this.name,
      required this.age,
      this.color = '블랙',
      this.thirsty = 100});
}

// 07. 캐스케이드(Cascade) 연산자
// 캐스케이드 연산자는 .. 으로 표기하며, 객체의 속성에 접근하거나 메서드를 호출
// 객체의 여러 속성에 접근하거나 메서드를 호출할 때 연속적으로 작업을 수행할 수 있도록 도와주는 연산자
// 캐스케이드 연산자를 통해 코드를 더 간결하고 읽기 쉽게 작성할 수 있음

class Person {
  String? name;
  int money = 0;

  void setName(String newName) {
    this.name = newName;
  }

  void addMoney(int amount) {
    this.money += amount;
  }
}
