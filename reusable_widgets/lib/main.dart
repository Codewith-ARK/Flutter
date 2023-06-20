import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: MyWidget(icon: Icons.abc, title: "My Title"),
      ),
    );

class MyWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}
