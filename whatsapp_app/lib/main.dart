import 'package:flutter/material.dart';

void main() {
  runApp(const portfolio());
}

class portfolio extends StatelessWidget {
  const portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("shahmeerportfolio"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network("https://picsum.photos/200"),
                ),
                // SizedBox(height: 12,),
                const Text("SHAHMEER",style: TextStyle(fontSize: 28),),
                const Text('developer',style: TextStyle(fontSize:22),),
                const Card(
                  color: Colors.amber,
                  child: ListTile(
                    leading: Icon(Icons.abc),
                    title: Text("shahmeerqureshi"),
                    subtitle: Text("web.developer"),
                  ),
                ),
                const Card(
                  color: Colors.green,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("shahmeerqureshi449gimal.com"),
                    subtitle: Text("shahmeer"),
                  ),
                ),
                const Card(
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(Icons.facebook),
                    title: Text("facbok"),
                    subtitle: Text("shahmeer"),
                  ),
                ),
                const Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text("instagiram"),
                    subtitle: Text("shahmeer"),
                  ),
                ),
                 Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.accessibility),
                    title: Text("instagiram"),
                    subtitle: Text("shahmeer"),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
