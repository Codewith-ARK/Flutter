import 'package:flutter/material.dart';
import 'package:whatsapp/database.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    // Gets the current date & time
    final currentTime = DateTime.now();
    // formats the above date so that only hour and minutes are left
    final hour = currentTime.hour.toString().padLeft(2, '0');
    final minute = currentTime.minute.toString().padLeft(2, '0');

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image.network('https://picsum.photos/seed/$index/200/200')),
            title: Text(name[index]),
            subtitle: Row(
              children: <Widget>[
                
                const Icon(Icons.arrow_outward, size: 18,),
                SizedBox(width: 8,),
                Text('$hour:$minute'),
              ],
            ),
          );
        },
      ),
    );
  }
}
