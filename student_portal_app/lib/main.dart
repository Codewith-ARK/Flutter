import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "USMS Student Portal",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              iconColor: Colors.amber[300],
              leading: const Icon(Icons.data_array),
              title: const Text(
                "CS-401: DBMS",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
              ),
              subtitle: const Text(
                "In the following we study about the ins-and-outs of databases.",
                style: TextStyle(color: Color(0xFF868686)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              iconColor: Colors.amber[300],
              leading: const Icon(Icons.system_security_update_good),
              title: const Text(
                "CS-402: OS",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "In the following subject we get familiar with the concepts of Operating systems.",
                style: TextStyle(color: Color(0xFF868686)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              iconColor: Colors.amber[300],
              leading: const Icon(Icons.wifi),
              title: const Text("CS-403: CN",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: const Text(
                "Computer Networks is all about studying networking and stuff.",
                style: TextStyle(
                  color: Color(0xFF868686),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              iconColor: Colors.amber[300],
              leading: const Icon(Icons.graphic_eq),
              title: const Text("CS-404: CGA",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: const Text(
                "Computer Graphics & Animation deals with variety of stuff ranging from rendering to computer animation.",
                style: TextStyle(
                  color: Color(0xFF868686),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              iconColor: Colors.amber[300],
              leading: const Icon(Icons.air),
              title: const Text("CS-405: DE",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: const Text(
                "Differential Equations deals with stuff that I didn't study.",
                style: TextStyle(
                  color: Color(0xFF868686),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
