import 'package:flutter/material.dart';
import 'package:get/get.dart';

var num = 0.obs;
List<String> color = ['red', 'amber', 'deepPurple'];
var activeColor = Colors.red.obs;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ARK's Counter App",
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: activeColor.value,
          title: const Text("ARK's Counter App"),
        ),
        body: Center(
          child: Obx(
            () => Text(
              "$num",
              style: TextStyle(
                fontSize: 58,
                fontWeight: FontWeight.bold,
                color: activeColor.value,
              ),
            ),
          ),
          
        ),
        floatingActionButton: FloatingActionButton(
            //? Formatting the button
            tooltip: "Add a number",
            foregroundColor: Colors.deepPurple[100],
            backgroundColor: Colors.deepPurple[700],
            hoverColor: Colors.deepPurple[400],
            onPressed: () {
              num++;
              activeColor.value = Colors.blue;
            },
            
            child: const Icon(Icons.add),
          ),
      
      ),
    );
  }
}
