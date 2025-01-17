import 'package:flutter/material.dart';

AppBar NormalAppBar() {
  return AppBar(
    title: Text('playwings'),
    actions: [
      Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.person))
    ],
  );
}
