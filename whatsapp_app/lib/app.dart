import 'package:flutter/material.dart';

main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            backgroundColor: Colors.teal,
            bottom: const TabBar(tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Statuses",
              ),
              Tab(
                text: "Calls",
              )
            ]),
          ),
          body: TabBarView(children: <Widget>[]),
        ),
      ),
    );
  }
}
