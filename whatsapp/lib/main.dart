import 'package:flutter/material.dart';
import 'package:whatsapp/statuses.dart';
import 'package:get/get.dart';

import 'calls.dart';
import 'chats.dart';

main() => runApp(const WhatsApp());

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'WhatsApp',
      home: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ],
            title: const Text('WhatsApp'),
            // tab bar
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Chats(),
              Statuses(),
              Calls(),
              Center(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
