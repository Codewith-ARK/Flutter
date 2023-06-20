import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ARK's App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text("ARK's App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            color: const Color.fromARGB(255, 200, 212, 233),
            child: Icon(Icons.facebook, size: 60),
          ),
          Container(
            width: 80,
            height: 80,
            color: Color.fromARGB(255, 255, 183, 170),
            child: Icon(Icons.wechat_sharp, size: 60,),
          ),
          Container(
            width: 80,
            height: 80,
            color: Color.fromARGB(255, 229, 247, 222),
            child: Icon(Icons.messenger_outline, size: 60,),
          )
        ]
      ),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.message), labelText: "Type a message:"),
          onChanged: (text) => this.changeText(text),
        ),
        Text(this.text)
      ],
    );
  }
}
