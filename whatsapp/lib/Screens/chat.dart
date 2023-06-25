import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Screens/chat_info.dart';

class Chat extends StatelessWidget {
  final String name;
  final String url;

  const Chat({Key? key, required this.name, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text("View contact"),
                ),
                const PopupMenuItem(
                  child: Text("Media, Links, & Docs"),
                ),
                const PopupMenuItem(
                  child: Text("Search"),
                ),
                const PopupMenuItem(
                  child: Text("Mute notifications"),
                ),
                const PopupMenuItem(
                  child: Text("Disappearing messages"),
                ),
                const PopupMenuItem(
                  child: Text("Wallpaper"),
                ),
              ];
            },
          )
        ],
        leading: Row(
          children: [
            Expanded(
              flex: 3,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.keyboard_arrow_left),
              ),
            ),
            Expanded(
              flex: 3,
              child: CircleAvatar(
                maxRadius: 80,
                backgroundImage: NetworkImage(url),
              ),
            ),
          ],
        ),
        title: InkWell(
          onTap: () {
            Get.to(ChatInfo(name: name, url: url));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name),
          ),
        ),
      ),
      body: Stack(
        children: [
        //! Produces a bug, downloads the image instead of displaying
          // Image.asset(
          //   'assets/chat_bg.png',
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   fit: BoxFit.cover,
          // ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber[50],
                  child: ListView(
                    children: [
                      _buildChatBubble('Hello', true),
                      _buildChatBubble('Hi there', false),
                      _buildChatBubble('How are you?', true),
                    ],
                  ),
                ),
              ),
              _buildBottomBar(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.teal : Colors.grey[500],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade50,
            blurRadius: 1.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.emoji_emotions),
            onPressed: () {
              // Open emoji picker or handle emoji icon tap
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8.0),
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.teal,),
            onPressed: () {
              // Handle send icon tap
            },
          ),
        ],
      ),
    );
  }
}
