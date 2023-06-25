import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String data;
  const MyWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return (Draggable(
      feedback: Container(
        width: 50,
        height: 50,
        color: Color(0x75FFC107),
        child: Text(data),
      ),
      childWhenDragging: Container(
        width: 50,
        height: 50,
        color: Colors.grey,
        child: Text(data),
      ),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.amber,
        child: Text(data),
      ),
    ));
  }
}
