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

  void _pressed() {
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Assignment",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My changing text app"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "contenido",
              ),
              TextButton(
                onPressed: _pressed,
                child: const Text("press me"),
              ),
            ],
          ),
        ),
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
  @override
  Widget build(BuildContext context) {
    return const Text("");
  }
}
