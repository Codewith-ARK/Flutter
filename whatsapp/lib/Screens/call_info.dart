import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Screens/chat.dart';

class CallInfo extends StatelessWidget {
  final String url;
  final Map data;
  const CallInfo({super.key, required this.url, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call info"),
        actions: [
          IconButton(
            tooltip: "Send a message",
            onPressed: () {
              Get.to(
                Chat(name: data['name'], url: url),
              );
            },
            icon: const Icon(Icons.message),
          ),
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
                data["name"],
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              Container(
                color: Colors.blueGrey[100],
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    data['number'],
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
