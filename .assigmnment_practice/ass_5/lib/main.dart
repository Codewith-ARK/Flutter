import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final _data = data[index];
          return Task(data: _data, index: index);
        },
        itemCount: data.length,
        // Separator, requires Listview.separated()
        // separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final dynamic data;
  final int index;
  const Task({super.key, required this.data, required this.index});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  late bool _isDone;
  late Color _bgColor;

  @override
  void initState() {
    super.initState();
    // Initialize _isDone with the value from widget.data['isDone']
    _isDone = widget.data['isDone'] ?? false;
    _bgColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Task ${widget.index + 1} - ${widget.data['title']}"),
              subtitle: Text(
                  "Due in ${widget.data['dueDate']} ${widget.data['dueDate'] > 1 ? 'days' : 'day'}"),
              trailing: Checkbox(
                value: _isDone,
                onChanged: (newValue) {
                  setState(() {
                    // Update both the local _isDone state and widget.data['isDone']
                    _isDone = newValue ?? false;
                    widget.data['isDone'] = newValue;
      
                    // Change the color of the card
                    widget.data['isDone']
                        ? _bgColor = Colors.grey[200]!
                        : _bgColor = Colors.white;
                  });
                },
              ),
            ),
            const Divider(
              color: Colors.black26,
            ),
            const ListTile(
              leading: Icon(Icons.file_copy_sharp),
              title: Text("Description of the task"),
              subtitle: Text("Description"),
            )
          ],
        ),
      ),
    );
  }
}
