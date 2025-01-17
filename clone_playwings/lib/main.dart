import 'package:clone_playwings/pages/flight_reservation/flight_reservation_page.dart';
import 'package:clone_playwings/pages/home/home_page.dart';
import 'package:clone_playwings/pages/hotel_reservation/hotel_reservation_page.dart';
import 'package:clone_playwings/pages/magazine/magazine_page.dart';
import 'package:clone_playwings/pages/special_price/special_price_page.dart';
import 'package:clone_playwings/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; // 현재 선택된 탭의 인덱스를 저장하는 변수

  void changeStackPages(int index) {
    setState(() {
      _selectedIndex = index; // 탭 변경시 상태 업데이트 build() 재호출
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone_playwings',
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: [
              HomePage(),
              SpecialPricePage(),
              MagazinePage(),
              FlightReservationPage(),
              HotelReservationPage(),
            ],
          ),
          bottomNavigationBar: _buildBottomNaviBar(),
        ),
      ),
    );
  }

  Widget _buildBottomNaviBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (index) {
        changeStackPages(index);
      },
      items: [
        BottomNavigationBarItem(label: '홈', icon: Icon(Icons.home_filled)),
        BottomNavigationBarItem(
            label: '특가 상품', icon: Icon(Icons.label_important_outline)),
        BottomNavigationBarItem(
            label: '매거진', icon: Icon(Icons.newspaper_outlined)),
        BottomNavigationBarItem(
            label: '항공 예약', icon: Icon(Icons.flight_takeoff)),
        BottomNavigationBarItem(
            label: '호텔 예약', icon: Icon(CupertinoIcons.bed_double)),
      ],
    );
  }
}
