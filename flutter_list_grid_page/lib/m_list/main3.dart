import 'package:flutter/material.dart';

// ListView 와 ListTile 위젯
void main() {
  List<Item> itemList = [
    Item('밥먹기', '아침밥 먹기'),
    Item('잠자기', '푹 자기'),
    Item('독서', '책 읽기'),
    Item('장보기', '돈가스 재료 사기'),
    Item('운동하기', '헬스장 가기'),
    Item('코딩하기', 'Flutter 프로젝트 진행'),
    Item('영화보기', '넷플릭스 시청하기'),
    Item('요리하기', '파스타 만들기'),
    Item('청소하기', '방 청소하기'),
    Item('빨래하기', '세탁기 돌리기'),
    Item('산책하기', '공원 한 바퀴 걷기'),
    Item('쇼핑하기', '옷 사기'),
    Item('커피 마시기', '카페에서 라떼 한 잔'),
    Item('친구 만나기', '친구와 점심 약속'),
    Item('게임하기', 'PC 게임 즐기기'),
    Item('음악 듣기', '플레이리스트 업데이트'),
    Item('드라이브하기', '해변 도로 드라이브'),
    Item('메모 작성하기', '일일 계획 세우기'),
    Item('일기 쓰기', '하루 일기 작성'),
    Item('회의 참여하기', '줌 회의 참석'),
  ];
  runApp(MyApp(itemList));
}

class MyApp extends StatelessWidget {
  List<Item> itemList = [];

  MyApp(this.itemList, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
            // 항목
            itemBuilder: (context, index) {
              final item = itemList[index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('${index + 1}'),
                ),
                title: Text('${item.title}'),
                subtitle: Text('${item.subTitle}'),
                trailing: IconButton(
                  onPressed: () {
                    print('item ${index + 1} click!');
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
              );
            },
            // 구분선
            separatorBuilder: (context, index) {
              return Divider(
                indent: 20, // 앞 간격
                endIndent: 20, // 끝 간격
                thickness: 2, // 두께
                color: Colors.green,
              );
            },
            itemCount: itemList.length),
      ),
    );
  }
}

class Item {
  String title;
  String subTitle;
  Item(this.title, this.subTitle);
}
