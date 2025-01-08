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
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('item1'),
              subtitle: Text('subtitle'),
              trailing: IconButton(
                  onPressed: () {
                    print('item1 click!');
                  },
                  icon: Icon(Icons.arrow_circle_right)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('2'),
              ),
              title: Text('item2'),
              subtitle: Text('subtitle'),
              trailing: IconButton(
                  onPressed: () {
                    print('item2 click!');
                  },
                  icon: Icon(Icons.arrow_circle_right)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('3'),
              ),
              title: Text('item3'),
              subtitle: Text('subtitle'),
              trailing: IconButton(
                  onPressed: () {
                    print('item3 click!');
                  },
                  icon: Icon(Icons.arrow_circle_right)),
            ),
          ],
        ),
      ),
    );
  }
}
