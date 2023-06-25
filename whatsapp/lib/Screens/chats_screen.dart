import 'package:flutter/material.dart';
import 'chat.dart';
import 'package:get/get.dart';

import '../../database.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // List View Builder
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final data = calls[index];
          return ListTile(
            // Show images from picsum.photos
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/seed/$index/200/200'),
            ),
            title: Text(data['name']),
            subtitle: Text(chats[index]),
            trailing: Text(data['time'], style: const TextStyle(fontSize: 12),),
            // Navigate to another widget
            onTap: () {
              Get.to(
                () => Chat(
                    name: data['name'],
                    url: 'https://picsum.photos/seed/$index/200/200'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Create a new chat",
        onPressed: () {
          setState(() {
            name.add('New Chat');
            chats.add('What\'s up Man');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
