import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<String> _tasks = [];
  final _task = TextEditingController();
  void dispose() {
    _task.dispose();
    // _amountController.dispose();
    super.dispose();
  }

  void _addtask() {
    if (_task.text.trim().isEmpty) {
      return;
    }

    final String _validTask = _task.text;
    setState(() {
      _tasks.add(_validTask);
      _task.clear();
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Added Successfully!")));
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text("Enter a new task")),
            controller: _task,
          ),
          ElevatedButton(onPressed: _addtask, child: const Text("Add Task"))
        ],
      ),
    );

    if (_tasks.isNotEmpty) {
      ListView.builder(
          itemCount: _tasks.length,
          itemBuilder: (ctx, index) => ListTile(
                leading: Text(_tasks[index]),
              ));
    }
    return Scaffold(body: content);
  }
}
