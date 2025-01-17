import 'package:clone_playwings/components/normal_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/home_page_body.dart';
import 'components/home_page_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(),
      body: ListView(
        children: [
          HomePageHeader(),
          HomePageBody(),
        ],
      ),
    );
  }
}
