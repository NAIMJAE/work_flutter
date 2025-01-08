import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_app/ex/ex_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ex_theme(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Instagram',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(CupertinoIcons.heart),
            SizedBox(width: 10),
            Icon(CupertinoIcons.paperplane),
          ],
        ),
        body: Column(
          children: [
            StoryList(),
            ArticleList(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.white, size: 40),
              Icon(Icons.search, color: Colors.white, size: 40),
              Icon(Icons.add, color: Colors.white, size: 40),
              Icon(Icons.slow_motion_video_sharp,
                  color: Colors.white, size: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/ch1.jpg',
                  fit: BoxFit.cover,
                  width: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    List<StoryData> storyData = [
      StoryData('aa0001', 'bb0001', true),
      StoryData('aa0002', 'bb0002', true),
      StoryData('aa0003', 'bb0003', false),
      StoryData('aa0004', 'bb0004', false),
      StoryData('aa0005', 'bb0005', false),
      StoryData('aa0006', 'bb0006', false),
      StoryData('aa0007', 'bb0007', false),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          bottom: BorderSide(color: Colors.white12, width: 1.0),
        ),
      ),
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyData.length,
        itemBuilder: (context, index) {
          final item = storyData[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                          width: 4,
                          color: item.status
                              ? Colors.pinkAccent
                              : Colors.white54)),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/${item.imageName}.jpg'),
                  ),
                ),
                SizedBox(height: 8),
                Text(item.name, style: TextStyle(color: Colors.white)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    List<ArticleData> storyData = [
      ArticleData('aa0001', 'bb0008', '뿅망치 짱구에요'),
      ArticleData('aa0002', 'bb0009', '유리에 붙은 짱구에요'),
      ArticleData('aa0003', 'bb0010', '근육맨 짱구에요'),
      ArticleData('aa0004', 'bb0011', '춤추는 맹구에요'),
      ArticleData('aa0005', 'bb0012', '가면 쓴 맹구에요'),
      ArticleData('aa0006', 'bb0013', '길 알려주는 맹구에요'),
      ArticleData('aa0007', 'bb0014', '근엄한 맹구에요'),
    ];
    return Expanded(
      child: Container(
        color: Colors.black,
        //height: 2000,
        child: ListView.builder(
          itemCount: storyData.length,
          itemBuilder: (context, index) {
            final item = storyData[index];
            return Container(
              height: 550,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                  'assets/images/${item.imageName}.jpg'),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text('회원님을 위한 추천',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white24)),
                              onPressed: () {},
                              child: Text(
                                '팔로우',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.more_horiz, color: Colors.white),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/${item.imageName}.jpg',
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.heart,
                                        color: Colors.white, size: 24),
                                    Text('666',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 12),
                                    Icon(CupertinoIcons.chat_bubble,
                                        color: Colors.white, size: 24),
                                    Text('666',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 12),
                                    Icon(CupertinoIcons.paperplane,
                                        color: Colors.white, size: 24),
                                    Text('666',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 12),
                                  ],
                                ),
                                Icon(Icons.bookmark_outline,
                                    color: Colors.white, size: 30)
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(item.text,
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class StoryData {
  String name;
  String imageName;
  bool status;

  StoryData(this.name, this.imageName, this.status);
}

class ArticleData {
  String name;
  String imageName;
  String text;

  ArticleData(this.name, this.imageName, this.text);
}
