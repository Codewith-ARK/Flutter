import 'package:flutter/material.dart';
import 'package:get/get.dart';

RxInt num = 1.obs;

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "3rd Assignment",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.chevron_right),
          onPressed: () {
            num++;
          },
          label: const Text(
            "Counter",
            style: TextStyle(fontSize: 12),
          )),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: const Image(
                    height: 150,
                    width: 150,
                    image: NetworkImage(
                      "https://picsum.photos/200",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Obx(
                  () => Text(
                    "Image $num",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter a comment",
                      label: Text("Comment"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.send),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}