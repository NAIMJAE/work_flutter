// 문제2 - 집합관계 설계

class Resident {
  final String name;
  Resident(this.name);

  void displayResident() {
    print('Resident Name : ${name}');
  }
}

class Apartment {
  final String buildingName;
  final List<Resident> resident;
  Apartment(this.buildingName) : resident = [];

  void addResident(Resident res) {
    resident.add(res);
  }

  void displayApartmentInfo() {
    print('buildingName : ${buildingName}');
    for (var res in resident) {
      res.displayResident();
    }
  }
}

void main() {
  Apartment apt1 = Apartment('부산빌딩');
  Apartment apt2 = Apartment('서울빌딩');

  Resident res1 = Resident('홍길동');
  Resident res2 = Resident('김유신');
  Resident res3 = Resident('강감찬');
  Resident res4 = Resident('이순신');

  apt1.addResident(res1);
  apt1.addResident(res2);
  apt1.addResident(res3);
  apt2.addResident(res4);

  apt1.displayApartmentInfo();
  apt2.displayApartmentInfo();
}
