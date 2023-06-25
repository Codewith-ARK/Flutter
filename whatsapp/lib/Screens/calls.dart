import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Screens/call_info.dart';
import '../database.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  final List<Map<String, dynamic>> data = calls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "Make a call",
        onPressed: (){},
        child: const Icon(Icons.add_ic_call_rounded),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final call = data[index];
            return ListTile(
              // the profile of the caller
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/seed/$index/200/200'),
              ),
              // Display the caller's name as the title
              title: Text(call["name"]),
              // Display the call's time and an icon indicating whether it was received or made as the subtitle
              subtitle: Row(
                children: [
                  // Conditionally display the appropriate icon and color based on whether the call was received or made
                  if (call['isReceived'])
                    Icon(
                      Icons.call_made_rounded,
                      color: Colors.lightGreenAccent[400],
                      size: 18,
                    )
                  else
                    Icon(
                      Icons.call_received_rounded,
                      color: Colors.redAccent[400],
                      size: 18,
                    ),
                  const SizedBox(
                    width: 8,
                  ),
                  // Display the call's time
                  Text(call['time']),
                ],
              ),
              onTap: () {
                Get.to(
                  () => CallInfo(
                      url: 'https://picsum.photos/seed/$index/200/200',
                      data: call),
                );
              },
            );
          }),
    );
  }
}
