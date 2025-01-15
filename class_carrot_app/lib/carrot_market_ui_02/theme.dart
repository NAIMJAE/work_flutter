import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TEXT Theme Setting
TextTheme textTheme() {
  return TextTheme(
    // displayLarge : 가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // displayMedium : 중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),

    // bodyLarge : 본문 텍스트 스타일
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // bodyMedium : 부제목, 작은 본문 텍스트 스타일
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // titleMedium : 중간 크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// AppBar Theme Setting
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
  );
}

// Bottom NavigationBar Theme Setting
BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange, // 선택된 아이템 색상
    unselectedItemColor: Colors.black54, // 선택 안된 아이템 색상
    showUnselectedLabels: true, // 선택 안된 라벨 표시 여부 설정
  );
}

// ThemeData Setting
ThemeData mTheme() {
  return ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange), // 자동 세팅
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange), // 수동 세팅
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
