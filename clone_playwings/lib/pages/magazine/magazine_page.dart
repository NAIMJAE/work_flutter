import 'package:clone_playwings/components/normal_appbar.dart';
import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({super.key});

  @override
  State<MagazinePage> createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: '전체'),
              Tab(text: '도시가이드'),
              Tab(text: '아티클'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildMagazineList(),
                _buildMagazineList(),
                _buildMagazineList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMagazineList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
      child: ListView(
        children: [
          _buildMagazineCard(),
          _buildMagazineCard(),
          _buildMagazineCard(),
          _buildMagazineCard(),
        ],
      ),
    );
  }

  Widget _buildMagazineCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/clone2.jpg'),
          ),
          const SizedBox(height: 8.0),
          Text('미국', style: ctBodySmallBold()),
          Text('세인트 토마스 섬', style: ctBodyMedium()),
          Text('작지만 큰 힐링의 섬, 세인트 토마스', style: ctBodySmall()),
          const SizedBox(height: 8.0),
          Row(
            children: [
              _buildCardTag('#청명한'),
              _buildCardTag('#미국적인'),
              _buildCardTag('#영화촬영지'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCardTag(text) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(text, style: ctBodySmall()),
    );
  }
}
