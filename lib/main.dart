// 1) Create a new Flutter App (in this project) and output an 
//    AppBar and some text below it
// 2) Add a button which changes the text (to any other text of 
//    your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() {
  runApp(const AssignmentApp());
}

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My changing text app"),
        ),
        body: const TextControlWidget(),
      ),
    );
  }
}

class TextControlWidget extends StatefulWidget {
  const TextControlWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextWidget();
}

class _TextWidget extends State<TextControlWidget> {
  bool pressed = false;

  void _pressed() {
    setState(() {
      pressed = !pressed;
    });
  }

  String getPressed() {
    return pressed ? "pressed" : "unpressed";
  }

  MaterialColor getColor() {
    return pressed ? Colors.green : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getPressed()),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: _pressed,
              child: const Text("press me..."),
            ),
          ],
        ),
        color: getColor(),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
