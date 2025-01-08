import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF, // Base color: White
  <int, Color>{
    50: Color(0xFFFFFFFF), // 50% opacity
    100: Color(0xFFF9F9F9), // Lighter shade
    200: Color(0xFFF2F2F2),
    300: Color(0xFFE6E6E6),
    400: Color(0xFFD9D9D9),
    500: Color(0xCCCCCC), // Mid-light gray
    600: Color(0xB3B3B3), // Darker gray
    700: Color(0x999999), // Darker shade
    800: Color(0x808080), // Even darker shade
    900: Color(0x666666), // Very dark gray
  },
);

ThemeData theme() {
  // ThemeData는 앱의 전반적인 테마(색상, 글꼴, 위젯 스타일 등)를 정의하는 클래스
  // 일관된 디자인을 유지하기 위해 사용
  return ThemeData(
    // 앱의 기본 생상 팔레트를 설정하는 속성
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
