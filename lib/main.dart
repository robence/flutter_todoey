import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:flutter_todoey/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = List.of([
      Task(text: 'Buy milk'),
      Task(text: 'Buy eggs'),
      Task(text: 'Buy bread')
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => TaskModel(tasks: tasks),
        child: const TaskScreen(),
      ),
    );
  }
}
