import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatInfo extends StatelessWidget {
  const ChatInfo({super.key, required this.name, required this.url});
  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text("Share"),
              ),
              const PopupMenuItem(
                child: Text("Edit"),
              ),
              const PopupMenuItem(
                child: Text("View in address book"),
              ),
              const PopupMenuItem(
                child: Text("Verify security code"),
              ),
            ];
          }),
        ],
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.keyboard_arrow_left_rounded),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                minRadius: 50,
                maxRadius: 80,
                backgroundImage: NetworkImage(url),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
