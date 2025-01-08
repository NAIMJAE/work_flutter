import 'package:flutter/material.dart';

// ListView 와 ListTile 위젯
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('${index + 1}'),
                ),
                title: Text('item ${index + 1}'),
                subtitle: Text('item sub ${index + 1}'),
                trailing: IconButton(
                    onPressed: () {
                      print('item ${index + 1} click');
                    },
                    icon: Icon(Icons.add)),
              ),
            );
          },
        ),
      ),
    );
  }
}
