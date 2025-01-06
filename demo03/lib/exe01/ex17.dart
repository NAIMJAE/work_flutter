class Character {
  String? name;
  int? power;
  int? hp;

  Character(String? name, int? power, int? hp) {
    this.name = name;
    this.power = power;
    this.hp = hp;
  }

  attack() {
    print('기본 공격');
  }
}

class Wizard extends Character {
  Wizard(String? name) : super(name, 10, 1000) {
    print("마법사 생성");
  }
  magicAttack() {
    print('얼음 마법 공격');
  }
}

class Warrior extends Character {
  Warrior(String? name) : super(name, 20, 2000) {
    print("전사 생성");
  }
  @override
  attack() {
    print('강한 기본 공격');
  }

  doubleAttack() {
    print('2단 공격');
  }
}

void main() {
  Wizard wizard = Wizard('마법사');
  print('${wizard.name} | ${wizard.power} | ${wizard.hp}');
  wizard.attack();
  wizard.magicAttack();

  print('------------------');

  Warrior warrior = Warrior('전사');
  print('${warrior.name} | ${warrior.power} | ${warrior.hp}');
  warrior.attack();
  warrior.doubleAttack();
}
