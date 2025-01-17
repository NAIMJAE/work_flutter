import 'package:flutter/material.dart';
import '../../components/normal_appbar.dart';
import '../../model/header_Item.dart';
import '../component/special_price_product_card.dart';

class SpecialPricePage extends StatefulWidget {
  const SpecialPricePage({super.key});

  @override
  State<SpecialPricePage> createState() => _SpecialPricePageState();
}

class _SpecialPricePageState extends State<SpecialPricePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
              Tab(text: '항공'),
              Tab(text: '호텔'),
              Tab(text: '투어'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _tabViewCard('전체'),
                _tabViewCard('항공'),
                _tabViewCard('호텔'),
                _tabViewCard('투어'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tabViewCard(cate) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SpecialPriceProductCard(
                    item: headerItem[index], size: 400, cate: cate);
              },
              itemCount: headerItem.length,
            ),
          )
        ],
      ),
    );
  }
}
