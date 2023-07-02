import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() => runApp(MaterialApp(
  title: "Todo List App - ARK",
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
  List<Map<String, dynamic>> tasks = [];

  @override
  void initState() {
    super.initState();
    loadTasks();
  }

  void addTaskDialog() {
  String title = '';
  String desc = '';
  int? daysRemaining;
  bool showError = false;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Add Task"),
        content: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Task title"),
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Description"),
              onChanged: (value) {
                desc = value;
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Due in...(days)"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (value) {
                setState(() {
                  daysRemaining = int.tryParse(value);
                });
              },
            ),
            if (showError)
              const Text(
                'Please enter a title and number of days remaining',
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (title.isNotEmpty && daysRemaining != null) {
                  final newTask = {
                    'title': title,
                    'desc': desc,
                    'dueDate': daysRemaining,
                    'isDone': false,
                  };
                  tasks.add(newTask);
                  Navigator.pop(context);
                } else {
                  showError = true;
                }
              });
            },
            child: const Text("Add"),
          ),
        ],
      );
    },
  );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          addTaskDialog();
        },
        label: const Text("New task"),
        icon: const Icon(Icons.add_rounded),
      ),
      appBar: AppBar(
        title: const Text("Todo List App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final data = tasks[index];
          return Task(
              data: data,
              index: index,
              onTaskStatusChanged: onTaskStatusChanged);
        },
        itemCount: tasks.length,
      ),
    );
  }

  Future<void> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskList = prefs.getStringList('tasks');
    if (taskList != null) {
      setState(() {
        tasks = taskList
            .map((taskJson) => jsonDecode(taskJson) as Map<String, dynamic>)
            .toList();
      });
    }
  }

  Future<void> saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskList = tasks.map((task) => jsonEncode(task)).toList();
    await prefs.setStringList('tasks', taskList);
  }

  void onTaskStatusChanged() {
    saveTasks();
  }
}

class Task extends StatefulWidget {
  final Map<String, dynamic> data;
  final int index;
  final VoidCallback onTaskStatusChanged;

  const Task({
    Key? key,
    required this.data,
    required this.index,
    required this.onTaskStatusChanged,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  late bool isDone;
  late Color bgColor;

  @override
  void initState() {
    super.initState();
    isDone = widget.data['isDone'] ?? false;
    bgColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.file_copy_sharp),
              title: Text("Task ${widget.index + 1} - ${widget.data['title']}"),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.data['desc']}",
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Due in (${widget.data['dueDate']}) ${widget.data['dueDate'] > 1 ? 'days' : 'day'}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              trailing: Checkbox(
                value: isDone,
                onChanged: (newValue) {
                  setState(() {
                    isDone = newValue ?? false;
                    widget.data['isDone'] = newValue;
                    widget.onTaskStatusChanged();

                    bgColor = widget.data['isDone']
                        ? Colors.grey[200]!
                        : Colors.white;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
