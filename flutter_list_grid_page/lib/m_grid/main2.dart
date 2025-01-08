import 'package:flutter/material.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Title'),
          actions: [Icon(Icons.menu), SizedBox(width: 10)],
        ),
        body: GridView.builder(
          padding: EdgeInsets.only(top: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                    offset: Offset(1, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset('assets/images/ch1.jpg',
                          fit: BoxFit.cover)),
                  Text('${index + 1}',
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
