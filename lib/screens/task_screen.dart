import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:flutter_todoey/screens/add_task_screen.dart';
import 'package:flutter_todoey/widgets/task_card.dart';
import 'package:flutter_todoey/widgets/task_header.dart';
import 'package:flutter_todoey/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  void onPressActionButton(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tasks = List.of([
      Task(text: 'Buy milk'),
      Task(text: 'Buy eggs'),
      Task(text: 'Buy bread')
    ]);

    return ChangeNotifierProvider(
      create: (context) => TaskModel(tasks: tasks),
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          onPressed: () => onPressActionButton(context),
          child: const Icon(
            Icons.add,
            size: 44.0,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TaskHeader(),
            TaskCard(
              child: TaskList(),
            )
          ],
        ),
      ),
    );
  }
}
