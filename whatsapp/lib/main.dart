import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/chats_screen.dart';
import 'Screens/statuses_screen.dart';
import 'Screens/calls.dart';

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
                tooltip: "Take a picture",
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_rounded),
              ),
              IconButton(
                tooltip: "Search in chats",
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    child: Text("New group"),
                  ),
                  const PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  const PopupMenuItem(
                    child: Text("Linked devices"),
                  ),
                  const PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                  const PopupMenuItem(
                    child: Text("Settings"),
                  ),
                ];
              }),
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
            ],
          ),
        ),
      ),
    );
  }
}
