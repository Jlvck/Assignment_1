// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var text = [
    "I'm Lucky",
    "Rock and Roll",
    "This is my way",
    "Coins & Daggers",
    "I am You"
  ];

  int index = 0;
  String title = 'First Assignment';

  String daple = "Let's get started";
  void changeText(index) {
    setState(() {
      daple = text[index];
    });
  }

  void resetText(String test) {
    setState(() {
      daple = test;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(50),
            child: Text(
              daple,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
          ),
          ElevatedButton(
              onPressed: (() {
                index = 0;
                changeText(index);
              }),
              child: Text(text[0])),
          ElevatedButton(
              onPressed: () {
                index = 1;
                changeText(index);
              },
              child: Text(text[1])),
          ElevatedButton(
              onPressed: () {
                index = 2;
                changeText(index);
              },
              child: Text(text[2])),
          ElevatedButton(
              onPressed: () {
                index = 3;
                changeText(index);
              },
              child: Text(text[3])),
          ElevatedButton(
              onPressed: () {
                index = 4;
                changeText(index);
              },
              child: Text(text[4])),
          TextButton(
            onPressed: () {
              daple = "Let's get started ";
              resetText(daple);
            },
            child: Text("Reset", style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    ));
  }
}
