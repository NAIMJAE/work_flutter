import 'package:flutter/material.dart';

// 상태가 있는 위젯 statefulWidget
// 기본적으로 2개의 클래스가 한 묶음
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override // 컴포지션 관계
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버 변수 - TabController는 TabBar와 TabView를 동기화하는 컨트롤러
  TabController? _tabController;

  // StatefulWidget으로 부터 Override
  // 랜더링 시 단 한번 호출되는 메서드
  @override
  void initState() {
    super.initState();
    print('init...');
    // length - tab의 개수
    // vsync - 자연스러운 애니메이션 전환을 위해 TickerProvider를 활용
    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서드는 기본 적으로 그림을 그릴 때 호출이 된다.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        )
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        _tabViewArticle(),
        _tabViewVideo(),
      ],
    );
  }

  GridView _tabViewVideo() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 2,
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bb000${index + 1}.jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.remove_red_eye, color: Colors.white),
                const SizedBox(width: 4),
                Text(
                  '9999',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 8,
    );
  }

  GridView _tabViewArticle() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Image.network('https://picsum.photos/id/${index}/200/300',
            fit: BoxFit.cover);
      },
      itemCount: 40,
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      // 중간 매개체로 연결
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.article_outlined),
          text: "게시글",
        ),
        Tab(
          icon: Icon(Icons.play_circle_outline_outlined),
          text: "영상",
        ),
      ],
      labelColor: Colors.orange,
    );
  }
}
/////////////////////////////////////////
