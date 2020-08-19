import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test application',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List<Color> generatebgcolors = [
  Color(0xFFFC407A),
  Color(0xFFF44336),
  Color(0xFFFF8A65),
  Color(0xFFFF9100),
  Color(0xFFFFC107),
  Color(0xFFCDDC39),
  Color(0xFF76FF03),
  Color(0xFF26A68A),
  Color(0xFF01579B),
  Color(0xFFAB47BC),
  Color(0xFF795548),
  Color(0xFF3D5AFE),
  Color(0xFFFF1744),
  Color(0xFF4CAF50),
];
int idx;
Color colornow = Color(0xFFFF1744);


void changecolor() {
  setState(() {
    idx = Random().nextInt(generatebgcolors.length);
    colornow = generatebgcolors[idx];
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colornow,
      ),
      child: FlatButton(
        onPressed: changecolor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          "Hey there!",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
