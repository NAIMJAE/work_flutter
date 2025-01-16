import 'package:class_carrot_app/carrot_market_ui_06/models/icon_menu.dart';
import 'package:flutter/material.dart';

import '../components/appbar_preferred_size.dart';
import 'components/card_icon_menu.dart';
import 'components/my_carrot_header.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('나의 당근'),
          actions: [
            IconButton(
              onPressed: () => print('setting click'),
              icon: Icon(Icons.settings, color: Colors.grey),
            )
          ],
          bottom: appBarBottomLine(),
        ),
        body: ListView(
          children: [
            MyCarrotHeader(),
            const SizedBox(height: 8.0),
            CardIconMenu(iconMenuList: iconMenu1),
            const SizedBox(height: 8.0),
            CardIconMenu(iconMenuList: iconMenu2),
            const SizedBox(height: 8.0),
            CardIconMenu(iconMenuList: iconMenu3),
          ],
        ),
      ),
    );
  }
}
