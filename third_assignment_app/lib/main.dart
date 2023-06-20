import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("My title"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Asset Image",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      "Network Image",
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'icon.png',
                      height: 200,
                      width: 200,
                    ),
                    Image.network('https://picsum.photos/200'),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Username"),
                    hintText: "enter your username",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "enter your password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const Card(
                    child: ListTile(
                  leading: Icon(Icons.send),
                  title: Text("Example Title"),
                  trailing: Icon(Icons.check_box),
                )),
                const Card(
                    child: ListTile(
                  leading: Icon(Icons.download),
                  title: Text("Example Title"),
                  trailing: Icon(Icons.check_box),
                )),
                const Card(
                    child: ListTile(
                  leading: Icon(Icons.done),
                  title: Text("Example Title"),
                  trailing: Icon(Icons.check_box),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("Submit")),
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.add_a_photo_outlined),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
