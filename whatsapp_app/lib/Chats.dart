import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(Icons.golf_course),
          title: Text("Recipient"),
          subtitle: Text("message"),
          trailing: Icon(Icons.ac_unit),
        );
      }),
    );
  }
}
