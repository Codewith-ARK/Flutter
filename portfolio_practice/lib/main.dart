import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "My Custom App",
          style: TextStyle(fontSize: 38),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: const CircleAvatar(
              maxRadius: 80,
              minRadius: 70,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
          Card(
            color: Colors.amber[500],
            child: ListTile(
              leading: Icon(Icons.add_box),
              title: Text(
                "My Code",
              ),
              subtitle: Text("this is subtitle"),
              trailing: Icon(Icons.abc),
            ),
          ),
        ],
      ),
    ),
  ));
}
