import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'To-Do App',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          "Todo List",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Column(children: [
                    ListTile(
                      title: const Text('Task 1'),
                      subtitle: const Text('Task 01 - Due in 2 Day'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Divider(color: Colors.black12),
                    const ListTile(
                      title: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      subtitle: Text('Description'),
                      leading: Icon(Icons.file_copy_sharp),
                    ),
                  ]),
                ),
                Card(
                  elevation: 5,
                  child: Column(children: [
                    ListTile(
                      title: const Text('Task 2'),
                      subtitle: const Text('Task 02 - Due in 2 Day'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Divider(color: Colors.black12),
                    const ListTile(
                      title: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      subtitle: Text('Description'),
                      leading: Icon(Icons.file_copy_sharp),
                    ),
                  ]),
                ),
                Card(
                  elevation: 5,
                  child: Column(children: [
                    ListTile(
                      title: const Text('Task 3'),
                      subtitle: const Text('Task 03 - Due in 3 Day'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Divider(color: Colors.black12),
                    const ListTile(
                      title: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      subtitle: Text('Description'),
                      leading: Icon(Icons.file_copy_sharp),
                    ),
                  ]),
                ),
                Card(
                  elevation: 5,
                  child: Column(children: [
                    ListTile(
                      title: const Text('Task 4'),
                      subtitle: const Text('Task 04 - Due in 4 Day'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Divider(color: Colors.black12),
                    const ListTile(
                      title: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      subtitle: Text('Description'),
                      leading: Icon(Icons.file_copy_sharp),
                    ),
                  ]),
                ),
                Card(
                  elevation: 5,
                  child: Column(children: [
                    ListTile(
                      title: const Text('Task 5'),
                      subtitle: const Text('Task 05 - Due in 5 Day'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Divider(color: Colors.black12),
                    const ListTile(
                      title: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      subtitle: Text('Description'),
                      leading: Icon(Icons.file_copy_sharp),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    )));
