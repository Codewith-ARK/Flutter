import 'package:flutter/material.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("shahmeer"),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network("https://picsum.photos/200"),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.accessible),
                title: Text("SHAHMEER"),
                subtitle: Text("cs.computer"),
              ),
            ),
             Card(
              color: Colors.red,
              child: ListTile(
                leading: Icon(Icons.accessible),
                title: Text("AKR"),
                subtitle: Text("cs.computer"),
              ),
            ),Card(
              color: Colors.amber,
              child: ListTile(
                leading: Icon(Icons.accessible),
                title: Text("Ehtisham ul Haq"),
                subtitle: Text("cs.computer"),
              ),
            ),

            

          ],
        ),
      ),
    );
  }
}
