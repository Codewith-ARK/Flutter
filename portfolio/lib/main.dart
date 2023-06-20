import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromARGB(255, 53, 53, 53), width: 4)),
                child: const CircleAvatar(
                  // backgroundImage: NetworkImage('https://picsum.photos/200'),
                  backgroundImage: AssetImage('assets/download.jpg'),
                  maxRadius: 80,
                  minRadius: 70,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "ARK & Moosa",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 5),
          const Text(
            "Future Lead Flutter Developer",
            style: TextStyle(color: Colors.blueAccent),
          ),
          const SizedBox(
            height: 5,
          ),
          const Card(
            color: Color.fromARGB(255, 129, 167, 247),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact Number"),
              subtitle: Text('03302037466'),
            ),
          ),
          const Card(
              color: Color.fromARGB(255, 58, 255, 40),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("Email Address"),
                subtitle: Text('arkusms@gmail.com'),
              )),

          const Card(
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.web),
                title: Text("Website"),
                subtitle: Text('www.usms@gmail.com'),
              )),
          const Card(
              color: Color.fromARGB(255, 61, 247, 216),
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text("Address"),
                subtitle: Text('Bhit Shah, Sindh, Pakistan'),
              )),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 53, 97))),
            onPressed: () {},
            child: const Text(
              "Hire Me",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ])),
      ),
    );
  }
}
