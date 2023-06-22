import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Chat extends StatelessWidget {
  final String name;
  final String url;

  const Chat({super.key, required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Expanded(
              flex: 3,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.keyboard_arrow_left),
              ),
            ),
            Expanded(
              flex:3,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  url,
                  // fit: BoxFit.scaleDown,
                  // height: 50,
                  // width: 50,
                ),
              ),
            ),
          ],
        ),
        title: Text(name),
      ),
    );
  }
}
