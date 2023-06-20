import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF8800),
          centerTitle: true,
          title: const Text(
            "Adobe Illustrator App",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amber[800],
          child: const Icon(Icons.download),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'icon.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                const Cards(),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[800])),
                  onPressed: () {},
                  child: const Text("Download"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.amber[50],
          child: ListTile(
            leading: Icon(
              color: Colors.amber[800],
              Icons.brush,
            ),
            title: const Text("Creativity"),
            subtitle: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          ),
        ),
        Card(
          color: Colors.amber[50],
          child: ListTile(
            leading: Icon(
              color: Colors.amber[800],
              Icons.spellcheck_rounded,
            ),
            title: const Text("Improved Auto-Correct"),
            subtitle: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          ),
        ),
        Card(
          color: Colors.amber[50],
          child: ListTile(
            leading: Icon(
              color: Colors.amber[800],
              Icons.check_box,
            ),
            title: const Text("Totally Legit"),
            subtitle: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          ),
        ),
      ],
    );
  }
}
