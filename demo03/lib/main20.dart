// [Flutter] Dart 언어 기본 문법 #06 - Mixin & 추상 클래스
// Ⅰ OOP 객체 관계
// 01. OOP 객체 관계란?
// 프로그램을 구성하는 여러 객체들이 서로 상호작용하거나 연결되는 방식을 의미
// 객체들이 서로 독립적으로 존재하는 것이 아니라, 다른 객체와 관계를 맺고 협력하여 기능을 수행
// 객체 간의 관계를 잘 설계하면 코드의 재사용성, 유지 보수성, 확장성을 높일 수 있음
// 객체의 관계는 [연관 관계, 상속 관계, 의존 관계]로 분류

// 02. 연관 관계 (Association)
// 객체들이 서로 연결되어 있는 일반적인 관계

// 컴포지션 관계 (Composition)
// - [부분-전체] 관계 중에서 생명 주기가 밀접하게 연관된 강한 소유 관계를 의미
// - 전체 객체가 소멸될 때 부분 객체도 함께 소멸, 부분 객체는 전체 객체에 종속
// - ex) 자동차 객체 - 엔진 객체 / 사람 객체 - 심장 객체

// class Engine {
//   final String type;
//   Engine(this.type);
// }
// class Car {
//   final Engine engine;
//   Car(this.engine);
// }
class Engine {
  final String type;
  Engine(this.type);

  void startEngine() {
    print('${type} 엔진이 시동됩니다.');
  }
}

class Car {
  final Engine engine;
  Car(String engineType) : engine = Engine(engineType);

  void startCart() {
    engine.startEngine();
    print('차가 출발합니다.');
  }
}

void main() {
  // 완벽한 컴포지션 X
  // Engine v8Engine = Engine('v8');
  // Car car1 = Car(v8Engine);

  // 컴포지션 O
  Car car2 = Car('v8');
  // 이제 누군가 참조하고 있지 않다면 GC 대상이 된다.

  Department dept1 = Department('개발 부서');
  Department dept2 = Department('디자인 부서');
  Employee emp1 = Employee('홍길동');
  Employee emp2 = Employee('김철수');
  Employee emp3 = Employee('김유신');

  dept1.addEmployee(emp1);
  dept1.addEmployee(emp2);
  dept2.addEmployee(emp3);

  dept1.displayDepartmentInfo();
  dept2.displayDepartmentInfo();
}

// 집합 관계 (Aggregation)
// - [부분-전체] 관계 중에서 전체와 부분의 생명 주기가 독립적이며, 약한 소유 관계를 의미
// - 전체 객체가 소멸될 때 부분 객체는 독립적으로 존재할 수 있음
// - ex) 부서 객체 - 직원 객체 / 부서가 소멸하더라도 직원은 계속 존재 가능

class Employee {
  final String name;
  Employee(this.name);

  void displayEmployeeInfo() {
    print('직원의 이름 : ${name}');
  }
}

class Department {
  final String deptName;
  final List<Employee> employees;
  Department(this.deptName) : employees = [] {
    print('Department 생성자 내부 스택 호출');
  } // 리터럴 표기법

  void addEmployee(Employee emp) {
    employees.add(emp);
  }

  void displayDepartmentInfo() {
    print('부서 이름 : ${deptName}');
    for (var emp in employees) {
      emp.displayEmployeeInfo();
    }
  }
}

// 이니셜라이저 리스트 ( : )
// 이니셜라이저 리스트는 상속 관계뿐만 아니라 연관관계에서도 클래스의 필드 초기화 및 객체 생성에 유용
