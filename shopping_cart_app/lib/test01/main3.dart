import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateful Option Button 테스트
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ColorSelectBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorSelectBox extends StatefulWidget {
  const ColorSelectBox({super.key});

  @override
  State<ColorSelectBox> createState() => _ColorSelectBoxState();
}

class _ColorSelectBoxState extends State<ColorSelectBox> {
  List<Color> colorOptionList = [
    Colors.black,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.white,
  ];
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Color Options',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: List.generate(colorOptionList.length,
              (idx) => _buildColorOption(colorOptionList[idx])),
        ),
      ],
    );
  }

  Widget _buildColorOption(eachColor) {
    return InkWell(
      onTap: () {
        print('${eachColor} CLICK!');
        selectedColor = eachColor;
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: (selectedColor == eachColor)
                      ? Colors.deepOrange
                      : Colors.black,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: eachColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
