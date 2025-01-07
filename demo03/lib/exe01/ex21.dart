// 문제1 - 컴포지션 관계 설계
class Room {
  final int roomNum;
  Room(this.roomNum);

  void printRoomNum() {
    print('RoomNum : ${roomNum}');
  }
}

class House {
  final String address;
  final Room room;
  House(this.address, int roomNum) : room = Room(roomNum);

  void displayHouseInfo() {
    print('House address : ${address}');
    room.printRoomNum();
  }
}

void main() {
  House house = House('부산 진구', 2);
  house.displayHouseInfo();
}
