import 'package:flutter/material.dart';
import 'draggable.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<String> word = ['A', 'R', 'K'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(scrollDirection: Axis.horizontal ,itemBuilder: (context, index) {
        return MyWidget(data: word[index]);
      }),
    );
  }
}
