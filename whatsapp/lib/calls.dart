import 'package:flutter/material.dart';

import 'database.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now();
    final hour = currentTime.hour.toString().padLeft(2, '0');
    final minute = currentTime.minute.toString().padLeft(2, '0');
    return Scaffold(
      // List View Builder
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
              ),
              title: Text("Create group call"),
              subtitle: Text("Create a link for your whatsapp call"),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Recents", textAlign: TextAlign.left),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // Show images from picsum.photos
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/$index/200/200'),
                    ),
                    title: Text(name[index]),
                    subtitle: Expanded(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_outward_outlined,
                            color: Colors.red,
                            size: 14,
                          ),
                          Text('$hour:$minute')
                        ],
                      ),
                    ),
                    trailing: const Icon(Icons.call),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Make a Call"),
        icon: const Icon(Icons.call),
      ),
    );
  }
}
